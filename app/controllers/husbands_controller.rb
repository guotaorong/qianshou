class HusbandsController < ApplicationController
  def show
    @husband = Husband.find(params[:id])

    if @husband.is_hidden
      flash[:warning] = '已经找到真爱了'
      redirect_to husbands_path
    end
  end

  def index
    @husbands = Husband.all
  end
end
