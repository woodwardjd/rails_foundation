# Monkey-patch to enable helper methods to work on the described object in Decorator
# specs.
#
# https://github.com/jcasimir/draper/issues/60
#
module Draper::ViewContextFilter
  alias :original_set_current_view_context :set_current_view_context

  def set_current_view_context
    controller = ApplicationController.new
    controller.request = ActionDispatch::TestRequest.new
    controller.original_set_current_view_context
  end
end