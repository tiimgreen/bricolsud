class HomeController < ApplicationController
  def index
    @services = Service.all.order(:order)
  end
end
