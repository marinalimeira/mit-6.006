def document_distance_problem(text)
end

def split_words(text)
end

def count_words(words_arr)
  dict = {}

  words_arr.each do |word|
    dict[word] ||= 0
    dict[word] += 1
  end

  dict
end

def dot_product(text)
end
