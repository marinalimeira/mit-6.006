require 'rspec'
require './class-3/sort'

describe "Sort" do
  let(:arr) { [4, -2, 3, 5, 94, 2, 1] }
  let(:sorted) { [-2, 1, 2, 3, 4, 5, 94] } 

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
end

