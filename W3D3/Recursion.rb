def range(min, max)
    return [] if max <= min
#iterative: [start] + range(start+1, end)

    [min] + range(min + 1, max)
end

def rec_sum(arr)
    return arr[0] if arr.length <= 1
    arr[0] + rec_sum(arr[1..-1])  
end

def itr_sum(arr)
    sum = 0
    arr.each do |ele|
        sum += ele
    end
    return sum
end

