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

def rec_fibonacci(n)
    return [1] if n == 1
    return [1, 1] if n == 2 
    last_sequence = fibonacci(n-1)
    last_sequence << last_sequence[-1] + last_sequence[-2]
end

def itr_fibonacci(n)
    output = [1, 1]
    if n == 1
        return [1]
    elsif n == 2
        return [1, 1]
    else
        (n-2).times do 
            sum = output[-1] + output[-2]
            output << sum
        end
    end
    output
end

def bsearch(arr, target)
 #base case: 
 return nil if arr.empty?

 mid = arr.length / 2
 if arr[mid] == target
    return mid
 elsif arr[mid] < target #scenario where target item is greater
    #ex: [1,2,3,4]
   s = bsearch(arr[(mid + 1)..-1], target)
    if s == nil
        return nil
    else
        return s + mid + 1 #s = 0 [1, 2, 3, 4] => [4] (s = 0) => mid = 2 => +1
    end
 else
    bsearch(arr[0...mid], target)
 end
end

def merge_sort(arr)
    return arr if arr.length == 1
    first_half = arr[0...(arr.length/2)]
    second_half = arr[(arr.length/2)..-1]
    merge_sort(first_half)
    merge_sort(second_half)

    merge(first_half, second_half)

end

require "byebug"
def merge(arr1, arr2) # arr1 = [1,2] arr2 = [3, 4]
    result = []

    until arr1.empty? && arr2.empty?
        arr1.each do |el1|
            arr2.each do |el2|
                if el1 < el2
                    result << arr1.shift
                else
                    result << arr2.shift
                end
            end
    result
end


