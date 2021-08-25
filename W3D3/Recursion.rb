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

# recursion #1
def exp(b, n)
    return 1 if n == 0
    b * exp(b, n-1)
end

#recursion #2
def exp(b, n)
    return 1 if n == 0
    return b if n == 1 

    if n % 2 == 0
        exp(b, n / 2) ** 2  
    else
        b * (exp(b, (n - 1)/2) ** 2) 
    end
end

    # exp (4, 4)
    #     exp(4, 2) ** 2 => 256
    #         16
    #         exp(4, 1) ** 2 => 16
    #             4
class Array

def dup
    output = []

    self.each do |el|
        if el.is_a?(Array)
            output << el.dup
        else
            output << el
        end
        
    end
return output

end
end

