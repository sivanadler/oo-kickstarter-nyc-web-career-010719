require 'pry'

class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    # @@backed_projects << self
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self)
  end

  def backed_projects
    @backed_projects
  end

end #end of class
