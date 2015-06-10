while true
	print "Text: "
	rcv = gets.chomp.downcase
	tex = ""
	for i in (0..(rcv.length-1))
		curr = rcv[i].ord - ("a".ord-1)
		if (curr > 0 and curr < 27)
			ans = 27 - curr
		else
			ans = curr
		end
		ans += ("a".ord - 1)
		tex << ans.chr
	end
	puts "Out: " + tex
	puts "--//--"
end