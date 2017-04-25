class Admin::ResumesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_is_admin

  layout 'admin'

  def index
    @wife = Wife.find(params[:wife_id])
    @resumes = @wife.resumes.order('created_at DESC')
  end
end
