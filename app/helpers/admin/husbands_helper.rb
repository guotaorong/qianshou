module Admin::HusbandsHelper
  def render_husband_status(husband)
    if husband.is_hidden
      '(Hidden)'
    else
      '(Public)'
    end
  end
end
