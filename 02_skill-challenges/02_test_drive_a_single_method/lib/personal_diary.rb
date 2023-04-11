def make_snippet(entry)
    arr = entry.split(" ")
    if arr.count > 5
        arr[0..4].join(" ").to_s + "..."
    else
        entry
    end
end