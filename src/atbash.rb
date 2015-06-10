while true
print "Text: "
rcv = gets.chomp.downcase
tex = ""
for i in (0..(rcv.length-1))
curr = rcv[i].ord - ("a".ord - 1)
if (curr > 0 and curr < 27) #Or < 26 idk
ans = 27-curr
else
ans = curr
end
ans += ("a".ord + 1) #Or -1, idk
tex << ans.chr
end
puts "Out: " + tex
puts "--//--"
end
