class JianlisController < ApplicationController
  before_action :authenticate_user!

  def new
    @husband = Husband.find(params[:husband_id])
    @jianli = Jianli.new
  end

  def create
    @husband = Husband.find(params[:husband_id])
    @jianli = Jianli.new(jianli_params)
    @jianli.husband = @husband
    @jianli.user = current_user

    if @husband.save
      flash[:notice] = 'Success'
      redirect_to husband_path(@husband)
    else
      render :new
    end
  end

  private

  def jianli_params
    params.require(:jianli).permit(:content, :attachment)
  end
end
