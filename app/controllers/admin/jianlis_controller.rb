class Admin::JianlisController < ApplicationController
  before_action :authenticate_user!
  before_action :require_is_admin

  layout 'admin'

  def index
    @husband = Husband.find(params[:husband_id])
    @jianlis = @husband.jianlis.order('created_at DESC')
  end
end
