#nhập trong irb
my_file = File.new("File/simple_file.txt", "w+")
my_file.close

sample = File.open("simple_file.txt", "w+")
sample.puts("another example of writing to a file.")
sample.close #sau khi đóng file thì mới ghi vào
File.read("simple_file.txt")
File.readlines("simple_file.txt")
#phải đọc trong irb thì mới trả về kết quả
sample = File.open("simple_file.txt", "a+") # không ghi đè nd mà ghi tiếp vào file

sample1 = File.new("dummy_file.txt", "w+")
File.delete("dummy_file.txt") 

10.times do
    sleep 1
    puts "Record saved ..."
    File.open("server.log", "a") {|f| f.puts "Server started ar: #{Time.new}"}
end
# cat server.log ghi vào trong terminal

ex1 = File.open("gistfile1.txt", "r") 
ex1.close
File.read("gistfile1.txt")
cat gistfile1.txt
