require 'rspec'
require './class-3/sort'
require './class-7/sort'

describe "Sort" do
  let(:arr) { [4, 9, 3, 5, 6, 2, 1] }
  let(:sorted) { [1, 2, 3, 4, 5, 6, 9] } 

  describe "Insertion Sort" do
    it { expect(insertion_sort arr).to eq sorted }
  end

  describe "Merge Sort" do
    it { expect(merge_sort arr).to eq sorted }
  end

  context ".merge" do
    let(:a) { [2, 5, 9] }
    let(:b) { [1, 3, 4] }

    it { expect(merge a, b).to eq [1, 2, 3, 4, 5, 9] }
    it { expect(merge b, a).to eq [1, 2, 3, 4, 5, 9] }
  end

  describe "Counting Sort" do
    it { expect(counting_sort arr).to eq sorted }
  end
end

