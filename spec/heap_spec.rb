require './class-4/heap.rb'

describe 'Heap' do
  #      7
  #   3    4
  # 6  1  2
  let(:heap) { Heap.new [7, 3, 4, 6, 1, 2] }

  context "#root" do
    it { expect(heap.root).to eq 7 }
  end

  # receives index and returns another index
  context "#parent" do
    it { expect(heap.parent(4)).to eq 1 }
    it { expect(heap.parent(5)).to eq 2 }
  end

  context "#left" do
    it { expect(heap.right(0)).to eq 2 }
    it { expect(heap.right(1)).to eq 4 }
  end

  context "#right" do
    it { expect(heap.left(1)).to eq 3 }
    it { expect(heap.left(2)).to eq 5 }
  end

  context "#max_heapify" do
    it do
      expect(heap.max_heapify(1)).to eq [7, 6, 4, 3, 1, 2]
      expect(heap.arr).to eq [7, 6, 4, 3, 1, 2]
    end
  end

  context "#sort" do
    xit { expect(heap.sort).to eq [1, 2, 3, 4, 6, 7] }
  end
end
