10.times { puts "Howdy!"}

5.upto(8) do |num|
  puts "#{num} alligator"
end

3.downto(1) {|num| puts "launch in #{num}"}

words = %w[dog zebra elephant chimpanzee]

words.each do |animal|
  puts "#{animal.length}"
end
