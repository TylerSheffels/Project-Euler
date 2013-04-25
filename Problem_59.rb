def unencrypt(array, key)

end

def solve

end

def count_chars(array)
	hsh = {}

	array.each do |element|
		hsh[element] = 1 if hsh[element].nil?
		hsh[element] += 1 unless hsh[element].nil?
	end

	hsh
end

cipher = File.open('C:\Projects\Euler\cipher1.txt', 'r')
cipher.each_line { |line| @encypted_array = line.split(',') }

puts count_chars(@encypted_array)
