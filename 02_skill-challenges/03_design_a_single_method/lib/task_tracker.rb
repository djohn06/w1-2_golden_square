def to_do(task)
    fail "Not a task." if task.empty?
    if task.include?("#TODO")
        return true
    else
        return false
    end
end