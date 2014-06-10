time1 = Time.new

puts "Current Time : " + time1.inspect

time2 = Time.now

puts "Current Time : " + time2.inspect

time = Time.new

puts "Current Time : " + time.inspect
puts time.year
puts time.month
puts time.day
puts time.wday
puts time.yday
puts time.hour
puts time.min
puts time.sec
puts time.usec
puts time.zone

puts Time.local(2014, 6, 8)
puts Time.local(2014, 6, 7, 8, 9)

values = time.to_a
p values

puts time.to_s

puts time.ctime

puts time.localtime

puts time.strftime("%B %d, %Y %I:%M %p")