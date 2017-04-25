class ResumesController < ApplicationController
  before_action :authenticate_user!

  def new
    @wife = Wife.find(params[:wife_id])
    @resume = Resume.new
  end

  def create
    @wife = Wife.find(params[:wife_id])
    @resume = Resume.new(resume_params)
    @resume.wife = @wife
    @resume.user = current_user

    if @resume.save
      flash[:notice] = '成功提交履历'
      redirect_to wife_path(@wife)
    else
      render :new
    end
  end

  private

  def resume_params
    params.require(:resume).permit(:content, :attachment)
  end
end
