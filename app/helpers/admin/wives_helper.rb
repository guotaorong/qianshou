module Admin::WivesHelper
  def render_wife_status(wife)
    if wife.is_hidden
      '(Hidden)'
    else
      '(Public)'
    end
  end
end
