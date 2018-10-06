# frozen_string_literal: true

module ApplicationHelper
  def current_controller?(*controllers)
    request.path[/^#{controllers.join('|')}/]
  end
end
