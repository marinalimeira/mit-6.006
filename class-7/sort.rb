def counting_sort arr
  count_arr = Array.new 10, 0
  sorted_arr = []

  arr.each do |el|
    count_arr[el] += 1
  end
 
  count_arr.each_with_index do |count, idx|
    count.times { sorted_arr << idx }
  end

  sorted_arr
end
