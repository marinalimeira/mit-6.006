class Heap
  # https://courses.csail.mit.edu/6.006/fall10/handouts/recitation10-8.pdf
  attr_accessor :arr

  def initialize arr
    @arr = arr
  end

  def size
    @arr.length
  end

  def root
    @arr[0]
  end

  def parent i
    (i - 1) / 2
  end

  def left i
    2 * i + 1
  end

  def right i
    2 * i + 2
  end

  def build_max_heap
    (size / 2).downto(0).each { |i| max_heapify i }
  end

  def max_heapify i
    l = left i
    r = right i

    largest = l if l <= size && @arr[l] && @arr[l] > @arr[i] 
    largest ||= i
    largest = r if r <= size && @arr[r] && @arr[r] > @arr[largest] 

    if largest != i
      @arr[i], @arr[largest] = @arr[largest], @arr[i]
      max_heapify largest 
    end

    @arr
  end

  def sort
    build_max_heap
    size.downto(1).each do |i|
      @arr[0], @arr[i] = @arr[i], @arr[0]
      # @arr.pop
      max_heapify i
    end

    @arr
  end
end
