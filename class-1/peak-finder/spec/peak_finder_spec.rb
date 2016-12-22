require 'rspec'
require './src/peak_finder'

describe "Peak finder 1D" do
  describe ".peak_finder_linear" do
    it "returns any peak" do
      arr = [3, 5, 6, 2, 1, 5]
      expect([6, 5]).to include peak_finder_linear(arr)

      arr = [93, 5, -3, -1, -9, 91]
      expect([93, -1, 91]).to include peak_finder_linear(arr)
    end
  end

  describe ".peak_finder_divide_and_conquer" do
    it "returns any peak" do
      arr = [3, 5, 6, 2, 1, 5]
      expect([6, 5]).to include peak_finder_divide_and_conquer(arr)

      arr = [93, 5, -3, -1, -9, 91]
      expect([93, -1, 91]).to include peak_finder_divide_and_conquer(arr)
    end
  end
end
