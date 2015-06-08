while true
	print "Text: "
	rcv = gets.chomp.downcase
	ans = []
	spc = rcv.length-1
	for i in (0..spc)
		test = rcv[i].ord - 96
		if ((test > 0) and (test < 27))
			ans.push(test)
		end
	end
	print ans.join(" + ")
	res = 0
	for j in (0..(ans.length-1))
		res += ans[j]
	end
	print " (= " + res.to_s + " ) or " + ans.join() + " (concat)"
summed = 0
for k in (0..(ans.length-1))
summed += ans[ans.length-(1+k)]*(10**k)
end
puts " or " + summed.to_s
	puts "-----"
end
