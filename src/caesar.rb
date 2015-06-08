while true
	print "Input: "
	inp = gets.chomp.downcase
	print "Key: "
	key = gets.chomp.to_i
	res = []
	
	if (97-key < 97)
		inp1 = 97
	else
		inp1 = 97-key
	end
	
	if (122+key > 122)
		inp2 = 122-key
	else
		inp2 = 122
	end
				
	safezone = ((inp1)..(inp2))
	
	#puts "Safezone = (" + inp1.to_s + ".." + inp2.to_s + ")"
	for i in (0..(inp.length-1))
		test = inp[i].ord
		#print "Test: " + test.to_s
		#puts
		#if ((test < 123 - key) and (test > 96 + key)) #In the safe zone, key is positive
		

		#if safezone.include?(test)
		#	res.push((test + key))
		#elsif ((key < 0) and ((97..(96-key)).include?(test)))
		#	res.push((test+key+26))
		#elsif ((key > 0) and (((123-key)..122).include?(test)))
		#	res.push((test+key-26))
		if ((97..122).include?(test))
			res.push((((test-97)+key)%26)+97)
		else #Random char
			res.push(test)
		end
	end
	#print res.join(",")
	#puts
	tex = ""
	res.each { |x| tex << (x.chr)}
	puts "Decoded: " + tex
	puts "-----"
end