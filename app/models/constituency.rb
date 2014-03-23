class Constituency < ActiveRecord::Base
	has_one :legislator
	has_one :party

	def self.search(search)
  	if search
    find(:all, :conditions => ['name LIKE ? OR district LIKE ?', "%#{search}%", "%#{search}%"])
  	else
    find(:all)
  	end
	end
end
