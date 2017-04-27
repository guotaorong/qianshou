class Admin::HusbandsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_is_admin
  layout 'admin'

  def show
    @husband = Husband.find(params[:id])
  end

  def index
    @husbands = Husband.where(is_hidden: false).order('created_at DESC')
    end

  def new
    @husband = Husband.new
  end

  def create
    @husband = Husband.new(husband_params)
    @husband.user = current_user

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
    params.require(:husband).permit(:title, :description, :age, :salary, :city, :contact_email, :is_hidden, :image)
  end
end
