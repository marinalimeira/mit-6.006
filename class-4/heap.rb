class Heap
  def initialize arr
    @arr = arr
  end

  def root
    @arr[0]
  end

  def parent i
    @arr[(i - 1) / 2]
  end

  def left i
    @arr[2 * i + 1]
  end

  def right i
    @arr[2 * i + 2]
  end
end
