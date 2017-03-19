require 'pry'

class Backer

	attr_reader :backed_projects, :backer

	def initialize(name)
		@name = name
		@backed_projects = []
	end

	def name
		@name
	end

	def back_project(project)
		@backed_projects << project
		project.backers << self
		# binding.pry
	end
end
