def reading_time(words)
    if words > 0
        return (words.to_f/200).ceil
    else
        return 0
    end
end