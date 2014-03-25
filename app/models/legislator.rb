class Legislator < ActiveRecord::Base
	belongs_to :party
	belongs_to :constituency


	def self.search1(search)
		if search
			find(:all, :conditions => ['name LIKE ?', "#{search}%"])
			
		else
			find(:all)
		end
	end
end
