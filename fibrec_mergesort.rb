def fibrec(num,res=[],a=0,b=1)
  if num <= 1
    p res
  else
    res.push(a)
    fibrec(num-1,res,b,a+b)
  end
end

fibrec(9)

def mergesort(arr,res=[])
  if arr.length == 1
    arr
  elsif arr.length > 1
    first = mergesort(arr[0..arr.length/2-1])
    second = mergesort(arr[arr.length/2..-1])
    until first.empty? && second.empty?
      if !first.empty? && !second.empty?
        first[0] < second[0] ? res.push(first.shift(1)) : res.push(second.shift(1))
      elsif first.empty?
        res.push(second.shift(1))
      else
        res.push(first.shift(1))
      end
      res.flatten!
    end
    res
  end
end

arr = []
50.times do
  arr.push(rand(200))
end
p mergesort(arr)
