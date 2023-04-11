class VowelRemover
    def initialize(text)
      @text = text
      @vowels = "aeiou"
    end
  
    def remove_vowels()
        @text.delete! @vowels
    end
  end
