require 'rspec'
require './class-1/peak_finder'

describe "Peak finder 1D" do
  let(:arr1) { [3, 5, 6, 2, 1, 5] }
  let(:arr2) { [93, 5, -3, -1, -9, 91] }

  describe ".peak_finder_linear" do
    context "returns any peak" do
      it "from arr1" do
        arr1_results = peak_finder_linear(arr1)
        expect([6, 5]).to include arr1_results
        expect([3, 2, 1, 5]).to_not include arr1_results
      end

      it "from arr2" do
        arr2_results = peak_finder_linear(arr2)
        expect([93, -1, 91]).to include arr2_results
        expect([5, -3, -9]).to_not include arr2_results
      end
    end
  end

  describe ".peak_finder_divide_and_conquer" do
    context "returns any peak" do
      it "from arr1" do
        arr1_results = peak_finder_divide_and_conquer(arr1)
        expect([6, 5]).to include arr1_results
        expect([3, 2, 1, 5]).to_not include arr1_results
      end

      it "from arr2" do
        arr2_results = peak_finder_divide_and_conquer(arr2)
        expect([93, -1, 91]).to include arr2_results
        expect([5, -3, -9]).to_not include arr2_results
      end
    end
  end
end
