module DeviseHelper
  def devise_error_messages!
    return " " if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
      <div class="alert alert-error alert-danger" role="alert">
        <button class="close" type="button" aria-label="Close" data-dismiss="alert">
          <span aria-hidden="true">
            &times;
          </span>
        </button>
          #{messages}
      </div>
    HTML

    html.html_safe
  end
end