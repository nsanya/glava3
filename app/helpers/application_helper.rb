# хелперс(помощники)
module ApplicationHelper
 def title_method
  base_title = "Ruby on Rails Tutorial Sample App"
  if @title.nil?
   base_title
  else
   "#{base_title} | #{@title}"
  end
 end

end
