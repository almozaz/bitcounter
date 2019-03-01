puts "Enter the absolute path of the file"
STDOUT.flush

file_path = gets.chomp

zero_bites = 0
one_bites = 0

File.open(file_path, "r") do |f|
  f.each_line do |line|
    zero_bites += line.count("0")
    one_bites += line.count("1")
  end
end
puts "found #{zero_bites} set to 0"
puts "found #{one_bites} set to 1"
