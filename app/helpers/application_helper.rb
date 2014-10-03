module ApplicationHelper
  def active_class controller
    "class='active'".html_safe if params[:controller] == controller
  end
end
