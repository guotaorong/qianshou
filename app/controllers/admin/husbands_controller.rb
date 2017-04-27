class Admin::HusbandsController < ApplicationController
  before_action :authenticate_user!

  def show
    @husband = Husband.find(params[:id])
  end

  def index
    @husbands = Husband.all
    end

  def new
    @husband = Husband.new
  end

  def create
    @husband = Husband.new(husband_params)

    if @husband.save
      redirect_to admin_husbands_path
    else
      render :new
    end
  end

  def edit
    @husband = Husband.find(params[:id])
  end

  def update
    @husband = Husband.find(params[:id])
    if @husband.update(husband_params)
      redirect_to admin_husbands_path
    else
      render :edit
    end
  end

  def destroy
    @husband = Husband.find(params[:id])

    @husband.destroy

    redirect_to admin_husbands_path
  end

  private

  def husband_params
    params.require(:husband).permit(:title, :description, :age, :salary, :city, :contact_email)
  end
end
