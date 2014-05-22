require 'set'

class WordChains
  def initialize
  end

  def adjacent_words(word, dictionary)
    dictionary.select do |dict_word|
      counter = 0
      dict_word.length.times do |idx|
        counter += 1 unless dict_word[idx] == word[idx]
      end
      counter == 1
    end
  end

  def explore_words(source, dictionary)
    @words_to_expand = Set.new [source]
    @candidate_words = dictionary.select do |dict_word|
      dict_word.length == source.length
    end.to_set
    @all_reachable_words = Set.new [source]

    until @words_to_expand.empty?
      word = @words_to_expand.first
      @words_to_expand.delete(word)
      adjacents = adjacent_words(word, @candidate_words)
      adjacents.each do |word|
        @candidate_words.delete(word)
      end
      @all_reachable_words.merge(adjacents)
      @words_to_expand.merge(adjacents)
    end
    @all_reachable_words
  end

  def find_chain(source, target, dictionary)
    @target = target
    @source = source
    @parents = Hash.new
    @words_to_expand = Set.new [source]
    @candidate_words = dictionary.select do |dict_word|
      dict_word.length == source.length
    end.to_set

    target_found = false
    until target_found
      parent_word = @words_to_expand.first
      @words_to_expand.delete(parent_word)

      adjacents = adjacent_words(parent_word, @candidate_words)
      adjacents.each do |child_word|
        @candidate_words.delete(child_word)
        @parents[child_word] = parent_word
        if target == child_word
          target_found = true
          break
        end
      end
      @words_to_expand.merge(adjacents)
    end
  end

  def build_path_from_breadcrumbs
    source_found = false
    child_word = @target
    path = [child_word]
    until source_found
      parent_word = @parents[child_word]
      child_word = parent_word
      path << child_word
      if child_word == @source
        source_found = true
      end
    end
    p path
  end
end

words = WordChains.new


DICTIONARY = File.readlines("dictionary.txt")
DICTIONARY.map! {|word| word.chomp}

words.find_chain("finger", "though", DICTIONARY)
words.build_path_from_breadcrumbs
