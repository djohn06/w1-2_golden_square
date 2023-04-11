def check_codeword(codeword)
    if codeword == "horse"
      return "Correct! Come in."
    elsif codeword.chars.first == "h" && codeword.chars.last == "e"
      return "Close, but no."
    else
        return "WRONG!"
    end
end