class HusbandsController < ApplicationController
  def show
    @husband = Husband.find(params[:id])
  end

  def index
    @husbands = Husband.all
  end
end
