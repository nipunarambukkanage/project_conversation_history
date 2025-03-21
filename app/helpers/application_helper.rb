module ApplicationHelper
  def status_color(status)
    case status.downcase
    when "completed" then "bg-green-100 text-green-800"
    when "in progress" then "bg-blue-100 text-blue-800"
    when "not started" then "bg-gray-100 text-gray-800"
    else "bg-indigo-100 text-indigo-800"
    end
  end
end
