class ApplicationController < ActionController::Base
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :choose_lang, :set_title, :set_page

  protected

    def choose_lang
      if controller_on_page('sessions', 'new') && request.subdomain != ''
        redirect_to new_user_session_url(subdomain: '')
      end

      @choose_lang = request.subdomain == "" && controller_on_page('home', 'index')

      if controller_on_page('sessions', 'new') || request.subdomain == ""
        I18n.locale = :en
      else
        I18n.locale = request.subdomain
      end
    end

    def set_title
      unless action_name.to_s.downcase == 'destroy'

        case params[:action]
        when 'index'
          @page_title = controller_name.titleize
        when 'show'
          @page_title = controller_name.singularize.titleize
        when 'new', 'create'
          @page_title = "New #{controller_name.singularize.titleize}"
        when 'edit', 'update'
          @page_title = "Edit #{controller_name.singularize.titleize}"
        else
          @page_title = action_name.titleize
        end
      end
    end

    def render_404
      raise ActionController::RoutingError.new('Page Not Found')
    end

    def set_page
      @page = WebPage.find_or_create_by(key: "#{controller_name}_#{action_name}")
    end
end
