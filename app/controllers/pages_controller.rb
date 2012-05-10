# Файл с действиями для каждой страницы
# что происходит во время открытия страницы

class PagesController < ApplicationController
  def home
   @title="Home"
  end

  def contact
   @title="Contact"
  end
  
  def about
   @title="About"
  end

  def help
   @title="Help"
  end
end
