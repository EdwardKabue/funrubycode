puts "Reading temperature from the file..."
celsius=File.read("temp.dat").to_i
fahrenheit=celsius*(9.to_f/5)+32
print "The temperature is ", fahrenheit, " degrees fahrenheit"
puts
