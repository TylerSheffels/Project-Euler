def hex(n)
	n*(2*n-1)
end

def pent(n)
	n*(3* n-1)/2
end

def tri(n)
	n*(n+1)/2
end


def solve
	hex_ind=144
	pent_ind=185
	tri_ind=285


	while true
		c_hex = hex hex_ind
		c_pent = pent pent_ind 
		while  c_pent <= c_hex
			if c_hex == c_pent
				c_tri = tri tri_ind
				while c_tri <= c_hex
					if c_tri == c_hex
						return c_hex
					end
					tri_ind += 1
					c_tri = tri tri_ind
				end
			end
			pent_ind += 1
			c_pent = pent pent_ind 
		end
		hex_ind += 1
	end
end


puts solve







# hex_arr = []
# pent_arr = []
# tri_arr = []

# iter = -5
# while iter < 100000
# 	hex_arr << hex(iter + 144)
# 	pent_arr << pent(iter + 165)
# 	tri_arr << tri(iter + 285)
# 	iter += 1 
# end

# hex_arr.each do |value|
# 	if pent_arr.include? value and tri_arr.include? value
# 		puts value
# 		break
# 	end
# end