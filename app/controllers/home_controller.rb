class HomeController < ApplicationController
  def index
    @services = Service.all.order(:order)
  end

  def chose_en_locale
    set_cookie(:en)
    redirect_to root_url(subdomain: :en)
  end

  def chose_fr_locale
    set_cookie(:fr)
    redirect_to root_url(subdomain: '')
  end

  private

  def set_cookie(lang)
    cookies.permanent[:preferred_language] = {
      value: lang,
      domain: Rails.configuration.x.domains
    }
  end
end
