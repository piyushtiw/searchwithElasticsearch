class SimillarWord
  require "word2vec/native_model"

  # Load the model file.
  model = Word2Vec::NativeModel.parse_file("data/vector.bin")

  def related_words_for(word)
    model.index(word)
    model.nearest_neighbors(word, neighbors_count: 3)
  end

end
