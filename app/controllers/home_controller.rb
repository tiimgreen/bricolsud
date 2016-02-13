class HomeController < ApplicationController
  def index
    @services = Service.all.order(:order)
  end

  def chose_en_locale
    set_cookie(:en)
    base_url_index = request.referrer.index(Rails.configuration.x.base_domain)
    new_path = request.referrer.insert(base_url_index, 'en.')
    redirect_to new_path
  end

  def chose_fr_locale
    set_cookie(:fr)
    path = URI(request.referer).path.slice(1..-1)
    redirect_to "#{root_url(subdomain: '')}#{path}"
  end

  private

  def set_cookie(lang)
    cookies.permanent[:preferred_language] = {
      value: lang,
      domain: Rails.configuration.x.domains
    }
  end
end
