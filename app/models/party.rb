class Party < ActiveRecord::Base
	has_many :legislators
	belongs_to :constituency

	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ? OR president LIKE ? OR established_year LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
			
		else
			find(:all)
		end
	end
end
