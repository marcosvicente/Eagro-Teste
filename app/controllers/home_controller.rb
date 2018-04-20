class HomeController < ApplicationController
  def index
    @tasks = Task.all
    @projects = Project.all
  end
end
