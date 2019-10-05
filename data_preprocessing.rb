require 'spreadsheet'
require 'json'
book = Spreadsheet.open('bill.xls')

sheet1 = book.worksheet('Sheet1')

sheet1.each do |row|
 k = Bill.new
 k.bill_id = row[0]
 k.alternate_bill_id = row[1]
 k.bill_name = row[2]
 k.bill_text_url = row[3]
 k.bill_summary_url = row[4]
 k.bill_sponsor = row[5]
 k.branch = row[6]
 k.action_date = row[7]
 k.action_text = row[8]
 k.save
end


require 'spreadsheet'
require 'json'
book = Spreadsheet.open('county.xls')

sheet1 = book.worksheet('Sheet1')

sheet1.each do |row|
 k = LegislatorCounty.new
 k.county = row[0]
 k.district = row[1]
 k.legislator_key = row[2]
 k.branch = row[3]
 k.first_name = row[4]
 k.last_name = row[5]
 k.save
end


require 'spreadsheet'
require 'json'
book = Spreadsheet.open('introduced.xls')

sheet1 = book.worksheet('Sheet1')

sheet1.each do |row|
 k = LegislatorIntroducedBill.new
 k.legislator_key = row[0]
 k.legislator_id = row[1]
 k.branch = row[2]
 k.bill_id = row[3]
 k.save
end

require 'spreadsheet'
require 'json'
book = Spreadsheet.open('legislator.xls')

sheet1 = book.worksheet('Sheet1')

sheet1.each do |row|
 k = Legislator.new
 k.branch = row[0]
 k.legislator_id = row[1]
 k.legislator_key = row[2]
 k.district = row[3]
 k.seat = row[4]
 k.first_name = row[5]
 k.last_name = row[6]
 k.middle_name = row[7]
 k.spouse = row[8]
 k.address = row[9]
 k.leg_room = row[10]
 k.city = row[11]
 k.state = row[12]
 k.zip = row[13]
 k.tel = row[14]
 k.email = row[15]
 k.party = row[16]
 k.senate_terms = row[17]
 k.house_terms = row[18]
 k.occupation = row[19]
 k.save
end


require 'spreadsheet'
require 'json'
book = Spreadsheet.open('')

data = File.read("keys_and_summaries.txt")

data.each do |line|
p line
break
end



y = File.read("Flower.txt").as_json
k = eval(y)
k[:data].each do |d|
  id = d[:KEY].sub('"', '').sub('"', '')
  bill = Bill.find_by(bill_id: id)
  bill.bill_summary = d[:SUMMARY].sub('"', '').sub('"', '')
  bill.save
end
