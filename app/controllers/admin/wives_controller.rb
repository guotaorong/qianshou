class Admin::WivesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_action :require_is_admin

  def show
    @wife = Wife.find(params[:id])
  end

  def index
    @wives = Wife.all
  end

  def new
    @wife = Wife.new
  end

  def create
    @wife = Wife.new(wife_params)

    if @wife.save
      redirect_to admin_wives_path
    else
      render :new
    end
  end

  def edit
    @wife = Wife.find(params[:id])
  end

  def update
    @wife = Wife.find(params[:id])
    if @wife.update(wife_params)
      redirect_to admin_wives_path
    else
      render :edit
    end
  end

  def destroy
    @wife = Wife.find(params[:id])

    @wife.destroy

    redirect_to admin_wives_path
  end

  private

  def wife_params
    params.require(:wife).permit(:title, :description, :age, :salary, :city, :contact_email)
  end
end
