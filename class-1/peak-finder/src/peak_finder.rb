class Array
  def peak? num
    index = self.index(num)

    return false unless index

    prev = self[index - 1]
    after = self[index + 1]

    prev ||= num
    after ||= num

    return true if num >= prev && num >= after
    false
  end
end

def peak_finder_linear(arr)
  arr.each { |a| return a if arr.peak?(a) }
end

def peak_finder_divide_and_conquer(arr)
  middle = arr.length/2

  return arr[middle] if arr.peak?(arr[middle])

  next_arr = arr.drop(middle) if arr[middle] < arr[middle + 1] 
  next_arr ||= arr.take(middle)

  peak_finder_divide_and_conquer(next_arr)
end
