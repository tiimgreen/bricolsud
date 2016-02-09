class ApplicationController < ActionController::Base
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session, except: :sign_in

  before_action :choose_lang, :set_title, :set_page

  protected

  def choose_lang
    if controller_on_page('sessions', 'new') && request.subdomain != ''
      redirect_to new_user_session_url(subdomain: '')
    end

    @choose_lang = !cookies[:preferred_language].present? && controller_on_page('home', 'index')

    I18n.locale = request.subdomain == '' ? :fr : request.subdomain
    I18n.locale = :en if controller_on_page('sessions', 'new')
  end

  def set_title
    unless action_name.to_s.downcase == 'destroy'
      @page_title = t("page_titles.#{controller_name}.#{action_name}", default: '')
    end
  end

  def render_404
    raise ActionController::RoutingError.new('Page Not Found')
  end

  def set_page
    @page = WebPage.find_or_create_by(key: "#{controller_name}_#{action_name}")
  end
end
