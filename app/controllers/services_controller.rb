class ServicesController < ApplicationController
  before_action :authenticate_user!, except: %w( index show )

  def index
    redirect_to Service.first
  end

  def show
    @services = Service.all.order(:order)
    @service = Service.find(params[:id])
    @page_title = @service["title_#{I18n.locale}"]
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                        autolink: true,
                                        space_after_headers: true,
                                        fenced_code_blocks: true,
                                        prettify: true)
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    if @service.update_attributes(service_params)
      flash[:success] = 'Service updated'
      redirect_to service_path @service
    else
      render :edit
    end
  end

  private

    def service_params
      params.require(:service).permit(:title_en, :title_fr, :body_en, :body_fr,
                                      :short_info_en, :short_info_fr,
                                      :font_class, :order)
    end
end
