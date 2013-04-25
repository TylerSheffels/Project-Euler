
def solve
	numeric_string = ""

	current_num = 0
	current_index = 0
	sub_index = 0

	while current_index < 1_000_000
		numeric_string << current_num.to_s
		current_num += 1
		current_index += 1
	end
	return numeric_string[1].to_i * numeric_string[10].to_i * numeric_string[100].to_i * numeric_string[1000].to_i * numeric_string[10000].to_i * numeric_string[100000].to_i * numeric_string[1000000].to_i
end
  
puts solve


def better_solve
	s = ""
	l = s.length
	x,nxt,prev,sum = 1,1,0,1
	while l < 1_000_000
		
		s = x.to_s
		l += x.to_s.length
		if l >= nxt
			sum *= s[nxt - prev -1 ].to_i
			nxt = nxt * 10
		end
		prev = 1
		x +=1
	end
	sum
end

puts better_solve