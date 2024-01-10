class SettleService
	attr_accessor :name, :category
	def self.all 
		f = File.open("db/my_db/settle.csv", "r") #открыли файл
		str = f.gets  #прочитали первую его строчку
		settles = [] #создали пустой массив
		while (str.present?)#
			settle = SettleService.new #создаем новый класс(экз)
			settle.name = str.split(";")[0] #переменная ЭК
			settle.category = str.split(";")[1] #переменная ЭК
			settles.push(settle)#записываем его в общий массив класса [settle]
		    str = f.gets #читаем следующую строку
		end
		f.close
		settles
		
	end
end

