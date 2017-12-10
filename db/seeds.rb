saying_list={
  "The Game" => {
  },
  "Hold'em" => {
  },
  "Sugar" => {
  },
}


saying_list.each do |word, band_hash|
  b = Saying.new
  b.word = word
  b.save
end
