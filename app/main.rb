require_relative './models/legislator.rb'


legislator = Legislator.find(10)

# p legislator

# p legislator.state

p ca_congress = Legislator.where(:state => "CA", :title => "Sen").order("lastname ASC") # where returns array of all objects
p "*******"
# p ca_congress[0].firstname
ca_list = ''
ca_congress.each do |legislator|
  ca_list << legislator.firstname + " " + legislator.lastname + " " + "(#{legislator.party})\n"
end 
puts ca_list
# p ca_congress = Legislator.find_by_state_and_title("CA","Sen") # find only finds the first object

# p "SENATORS"

# p "#{ca_congress[0]}" + " " + " #{ca_congress[0]}"
