# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
constituencies1 = Constituency.create(name: 'Kamareddy', district: 'Nizamabad', state: 'AP')
constituencies2 = Constituency.create(name: 'Uppal', district: 'Rangareddy', state: 'AP')
constituencies3 = Constituency.create(name: 'Hindupur', district: 'Anantapur', state: 'AP')
constituencies4 = Constituency.create(name: 'Malkajgiri', district: 'Rangareddy', state: 'AP')
constituencies5 = Constituency.create(name: 'Medchal', district: 'Medak', state: 'AP')
constituencies6 = Constituency.create(name: 'Pulivendula', district: 'Kadapa', state: 'AP')
constituencies7 = Constituency.create(name: 'Chandragiri', district: 'Chittor', state: 'AP')
constituencies8 = Constituency.create(name: 'Tirupathi', district: 'Chittor', state: 'AP')

legislators1 = Legislator.create(name: 'Pawan Kalyan', age: '42', constituency_id: '4', party_id: '3')
legislators2 = Legislator.create(name: 'Nara Chandra Babu Naidu', age: '60', constituency_id: '3', party_id: '1')
legislators3 = Legislator.create(name: 'Bandari Raji Reddy', age: '60', constituency_id: '2', party_id: '2')
legislators4 = Legislator.create(name: 'Gampa Govardhan', age: '59', constituency_id: '1', party_id: '4')
legislators5 = Legislator.create(name: 'Jagan', age: '40', constituency_id: '6', party_id: '5')
legislators6 = Legislator.create(name: 'Chiranjeevi', age: '59', constituency_id: '8', party_id: '2')

parties1 = Party.create(name: 'TDP', president: 'Nara Chandra Babu Naidu', established_year:'1983-01-01')
parties2 = Party.create(name: 'Congress', president: 'Sonia Gandhi', established_year:'1885-01-01')
parties3 = Party.create(name: 'Jana Sena', president: 'Pawan Kalyan', established_year:'2014-03-06')
parties4 = Party.create(name: 'TRS', president: 'K Chandra Shekhar Rao', established_year:'2000-03-13')
parties5 = Party.create(name: 'YSRCP', president: 'JAGAN REDDY', established_year:'2010-08-04')
parties6 = Party.create(name: 'Lok Satta', president: 'JP Narayan', established_year:'2000-02-02')
parties7 = Party.create(name: 'JSP', president: 'Kiran Kumar Reddy', established_year:'2014-02-28')
parties8 = Party.create(name: 'RJD', president: 'Lalu Prasad Yadav', established_year:'1995-09-22')
parties9 = Party.create(name: 'CPI', president: 'Seetaram Yechuri', established_year:'1950-03-02')

=end

require 'open-uri'
doc = Nokogiri::HTML(open("http://www.mapsofindia.com/parliamentaryconstituencies/andhrapradesh/"))
doc2 = Nokogiri::HTML(open("http://en.wikipedia.org/wiki/List_of_constituencies_of_the_Lok_Sabha#Andhra_Pradesh_.2842.29"))
puts 'test'

doc.css('.tableizer-table')[0].css("tr")[1,42].each do |row|
	columns = row.css("td")

	#puts columns[1].text()
	#puts columns[2].text()
	Constituency.create(name: columns[1].text(), category: columns[2].text(), mla_constituencies: columns[3].text())

end




=begin
require 'open-uri'
url = "http://en.wikipedia.org/wiki/List_of_constituencies_of_the_Lok_Sabha#Andhra_Pradesh_.2842.29"
doc = Nokogiri::HTML(open(url))
puts 'test2'

doc.css('.wikitable')[0].css("tr")[1,42].each do |row1|
	columns = row1.css("td")
	Constituency.create(mla_constituencies: columns[3].text())
end
=end

