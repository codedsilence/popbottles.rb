

puts "How much are you doing to spend on bottles?"
cost = gets.chomp.to_i 
	@invest = cost / 2
	 
def bottle_pop(bottles, caps_recycled, empties_recycled, caps, empties)
	@bottles = bottles
 	@caps_recycled_total = caps_recycled 
	@empties_recycled_total = empties_recycled
	@caps = caps
	@empties = empties
	
 
	@empties += @bottles 
	@empties_recycled_total += @empties/2.floor
 
	@bottles1 = 0 
 
	@bottles1 = @empties/2
	@empties = @empties%2
	
	@caps += @bottles
	@caps_recycled_total += @caps/4.floor
 
	@bottles1 += @caps/4.floor
	
	@caps = @caps%4
 
	@bottles = @bottles1
	
		
 
	if  @bottles > 0
		bottle_pop(@bottles, @caps_recycled_total, @empties_recycled_total, @caps, @empties)
	#add variables for caps recycled and empties recycled, 
	# then pass the new values for the variables at the end. 
	return 
	end 
end
puts bottle_pop(@invest, 0, 0, 0, 0 )
 
 
def total_bottle_return(empty_return, caps_return)
	empty_return + caps_return
end
 
def return_value(num_bottles_returned)
	num_bottles_returned * 2	
end 
 
puts "You have #{@caps} caps leftover"
 
puts "You have #{@empties} empty bottle(s) leftover"
puts "You got #{total_bottle_return(@empties_recycled_total, @caps_recycled_total)} bottles back, total!"
value =  return_value(total_bottle_return(@empties_recycled_total, @caps_recycled_total))
#puts "You got #{total_bottle_retrun} bottles free! A value dollar value!"
puts "That's a #{value} dollar value!"
 

