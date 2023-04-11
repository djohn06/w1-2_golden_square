class GrammarStats
  def initialize
    @true_false = []
  end

  def check(text)
# taken from previous exercise "grammer_improve"
    fail "Not a sentence." if text.empty?
    first_letter_capital = text[0] == text[0].upcase
    last_character_punctuation = [".","?","!"].include? text[-1]
    if first_letter_capital && last_character_punctuation
      @true_false << "true"
      return true
    else
      @true_false << "false"
      return false
    end
  end

  def percentage_good
    true_sentences = @true_false.count("true")
    ratio = true_sentences.to_f / @true_false.count
    return ratio * 100
  end
end