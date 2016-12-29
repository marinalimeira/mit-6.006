class BinarySearchTree
  attr_accessor :root
  def initialize root
    @root = root
  end

  def inorder_tree_walk node
    inorder_tree_walk node.left if node.left
    puts node.key
    inorder_tree_walk node.right if node.right
  end

  def insert new_node
    curr_node = @root
    y = nil
    while curr_node
      y = curr_node
      if new_node.key < curr_node.key
       curr_node = curr_node.left
      else
        curr_node = curr_node.right
      end
    end

    new_node.parent = y

    if y.nil?
      root = new_node
    elsif new_node.key < y.key
      y.left = new_node
    else
      y.right = new_node
    end
  end
end

class Node
  attr_accessor :parent, :left, :right
  attr_reader   :key

  def initialize key: nil, parent: nil, left: nil, right: nil
    raise error_missing_key unless key
    @key    = key
    @parent = parent
    @left   = left
    @right  = right
  end

  def error_missing_key
    "You have to specify a key!"
  end
end
