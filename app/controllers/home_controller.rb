class HomeController < ApplicationController
  before_action :authenticate_user!



  def index
    @courses = Course.all
    @materials = Material.all
  end
end
