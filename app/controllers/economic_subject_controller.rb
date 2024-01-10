class EconomicSubjectController < ApplicationController
	def index 
		@economic_subjects = EconomicSubject.all
	end 
end
