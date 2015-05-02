print "Please enter the temperature in degrees celsius? "
celsius = gets
celsius = celsius.to_f
fahrenheit = celsius*(9.to_f/5)+32
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close
