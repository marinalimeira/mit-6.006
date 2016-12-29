require 'rspec'
require './class-5/binary_search_tree'

describe "Binary Search Tree" do
  let(:root) { Node.new key: 12 }
  let(:bst) { BinarySearchTree.new root }

  let(:node6) { Node.new key: 6 }
  let(:node5) { Node.new key: 5 }
  let(:node14) { Node.new key: 14 }

  before do
    bst.insert node6
    bst.insert node5
    bst.insert node14
  end

  context "#insert" do
    it { expect(bst.root.left.key).to eq 6 }
    it { expect(bst.root.left.left.key).to eq 5 }
    it { expect(bst.root.right.key).to eq 14 }
  end

  context "#inorder_tree_walk" do
    it { expect{ bst.inorder_tree_walk root }.to output("5\n6\n12\n14\n").to_stdout}
  end
end

describe "Node" do
  context "initialize without a key" do
    it { expect{ Node.new(parent: 0) }.to raise_error "You have to specify a key!" }
  end

  context "initialize only with key" do
    it { expect(Node.new(key: 2).parent).to be_nil }
    it { expect(Node.new(key: 2).right).to be_nil }
    it { expect(Node.new(key: 2).left).to be_nil }
  end
end
