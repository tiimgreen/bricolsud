class ServiceImagesController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def new
    @service_image = ServiceImage.new
  end

  def create
    @service = Service.find(params[:id])

    @service_image = @service.service_images.build(service_image_params)
    if @service_image.save
      flash[:success] = 'Question created'
      redirect_to @service
    else
      render :new
    end
  end

  def destroy
    @service = Service.find(params[:service_id])
    @service_image = ServiceImage.find(params[:image_id])

    if @service_image.destroy
      flash[:success] = 'Image deleted'
      redirect_to @service
    else
      flash[:warning] = 'Problem deleting image'
      redirect_to request.referer
    end
  end

  private

    def service_image_params
      params.require(:service_image).permit(:alt_text, :image)
    end
end
