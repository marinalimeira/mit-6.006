require './class-4/heap.rb'

describe 'Heap' do
  #      70
  #   31    42
  # 63  14 25
  let(:heap) { Heap.new [7, 3, 4, 6, 1, 2] }

  context "#root" do
    it { expect(heap.root).to eq 7 }
  end

  # receives index and returns element
  context "#parent" do
    it { expect(heap.parent(4)).to eq 3 }
    it { expect(heap.parent(5)).to eq 4 }
  end

  context "#left" do
    it { expect(heap.right(0)).to eq 4 }
    it { expect(heap.right(1)).to eq 1 }
  end

  context "#right" do
    it { expect(heap.left(1)).to eq 6 }
    it { expect(heap.left(2)).to eq 2 }
  end
end
