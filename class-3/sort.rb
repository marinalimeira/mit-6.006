def insertion_sort arr
  (arr.length).times do |key|
    sorted_arr = arr.take(key + 1)

    sorted_arr.length.times do |idx|
      if arr[idx] > arr[key]
        arr[key], arr[idx] = arr[idx], arr[key]
      end
    end 
  end

  arr
end

def merge_sort arr
  length = arr.length
  if length == 1
    arr
  else
    mid   = length/2
    left  = merge_sort arr.take(mid)
    right = merge_sort arr.drop(mid)
    merge left, right
  end
end

def merge a, b
  total = a.length + b.length
  new_arr = []

  total.times do
    if b.empty? || (!a.empty? && a.first <= b.first)
      new_arr << a.shift
    else
      new_arr << b.shift
    end
  end

  new_arr
end
