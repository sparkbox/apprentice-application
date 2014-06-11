module ApplicationHelper

  #returns the full title of a page
  def full_title(page_title)
    base_title = "Sparkbox Apprentice Application"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end