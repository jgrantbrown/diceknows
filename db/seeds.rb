saying_list={
  "The Game" => {
  },
  "Hold'em" => {
  },
  "Sugar" => {
  },
}


saying_list.each do |word, word_hash|
  b = Saying.new
  b[:word] = word
  b.save
end
