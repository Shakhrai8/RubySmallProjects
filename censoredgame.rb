test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living under such bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]
banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]
new_order = []
test_tweets.flat_map do |tweet|
  re = Regexp.union(banned_phrases)
  new_order.push tweet.split.map { |word| word.gsub(re, 'CENSORED') }.join(' ')
end
p new_order