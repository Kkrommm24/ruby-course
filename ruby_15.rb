/pattern/
/pattern/im # option can be specified
%r!/usr/local! # general delimited regular expression

#!/usr/bin/ruby
line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";
puts "Line1 contains Cats" if ( line1 =~ /Cats(.*)/ )
puts "Line2 contains Dogs" if ( line2 =~ /Cats(.*)/ )
%r|/| 
%r[</(.*)>]i

#!/usr/bin/ruby
phone = "2004-959-559 #This is Phone Number"
# Delete Ruby-style comments
phone = phone.sub!(/#.*$/, "")
puts "Phone Num : #{phone}"
# Remove anything other than digits
phone = phone.gsub!(/\D/, "")
puts "Phone Num : #{phone}"

#!/usr/bin/ruby
text = "rails are rails, really good Ruby on Rails"
# Change "rails" to "Rails" throughout
text.gsub!("rails", "Rails")
# Capitalize the word "Rails" throughout
text.gsub!(/\brails\b/, "Rails")
puts "#{text}"

# Includes characters a-z, digits 0-9, and special characters @#$%&
"^[a-z0-9\.@#\$%&]+$/"
# At least 8 characters including at least 1 letter and 1 number
"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" "/
#Ít nhất 8 kí tự trong đó có ít nhất 1 chữ cái in hoa, 1 chữ cái in thường, 1 số và 1 kí tự đặc biệt
(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}/"
# At least 7 characters and maximum 16 characters allowed 0-9, a-z\
"/ ^[a-zA-Z0-9\s]{7,16}$/"
