class AdminController < ApplicationController
  before_action :authenticate_admin!
  def index
    @addresses = Address.all
  end
end
