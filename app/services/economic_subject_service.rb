class EconomicSubjectService
	attr_accessor :name, :category
	def self.all 
		f = File.open("db/my_db/economicsubject.csv", "r")
		str = f.gets
		economicsubjects = []
		while (str.present?)
			economic_subject = EconomicSubjectService.new
			economic_subject.name = str.split(";")[0] 
            economic_subject.category = str.split(";")[1] 
			economic_subject.resources = str.split(";")[2] 
			economic_subjects.push(economicsubjects)
		    str = f.gets 
		end
		f.close
		economic_subjects
	end
end

