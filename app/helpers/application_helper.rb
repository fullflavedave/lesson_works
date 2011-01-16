module ApplicationHelper

  def logo
    image_tag("logo.gif", :alt => "LessonWorks", :class => "round")
  end
    
  # Returns proper title on per page basis
  def title
    @title.nil? ? 'LessonWorks' : "LessonWorks | #{@title}"
  end
  
end
