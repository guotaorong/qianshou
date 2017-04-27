module Admin::HusbandsHelper
  def render_husband_status(husband)
    if husband.is_hidden
      content_tag(:span, '', class: 'fa fa-lock')
    else
      content_tag(:span, '', class: 'fa fa-globe')
    end
  end
end
