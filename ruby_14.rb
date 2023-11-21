a = 10
b = "42"
begin
 a + b
rescue
 puts "Could not add variables a (#{a.class}) and b (#{b.class})"
else
 puts "a + b is #{a + b}"
end

values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand,
 {:dog=>'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle
while values.length > 0
    a = values.pop
    b = values.pop
    begin
        a + b
    rescue
        puts "Could not add variables a (#{a.class}) and b (#{b.class})"
    else
        puts "a + b is #{a + b}"
    end
end

#Handle error
a = 10
b = "34"
begin
    a + b
rescue
    puts " Could not add variables a (#{a.class}) and b (#{b.class})"
else
    puts " a + b is #{a + b}"
ensure
    puts " I'm ensure !!!"
end

#Handle error with specify rescue
begin
    get_name
rescue NameError => e
    puts e
else
    puts " Execute get_name method success"
ensure
    puts " I'm ensure !!!"
end
   
#Using retry
for i in "A".."C"
    retries = 2
    begin
        puts "Executing command #{i}"
        raise "Exception: #{i}"
    rescue Exception=>e
        puts "\tCaught: #{e}"
        if retries > 0
            puts "\tTrying #{retries} more times\n"
            retries -= 1
            sleep 2 #dừng ctr trong 2s
        retry
        end
    end
end