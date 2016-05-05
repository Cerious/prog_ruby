def words_from_string(str)
  str.gsub!(/\p{Punct}/, "")
  str.split(" ")
end

def word_count(list)
  counts = Hash.new(0)
  for word in list
    counts[word] += 1
  end
  counts
end
raw_txt = %{godel escher bach bach}
word_list = words_from_string(raw_txt)
counts = word_count(word_list)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)
=begin
for i in 0...5
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end
=end
