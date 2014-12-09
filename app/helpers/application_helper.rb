module ApplicationHelper

  def current_controller?(*controllers)
    request.path[/^#{controllers.join('|')}/]
  end

end
