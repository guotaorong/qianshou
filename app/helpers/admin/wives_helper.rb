module Admin::WivesHelper
  def render_wife_status(wife)
    if wife.is_hidden
      content_tag(:span, '', class: 'fa fa-lock')
    else
      content_tag(:span, '', class: 'fa fa-globe')
    end
  end
end
