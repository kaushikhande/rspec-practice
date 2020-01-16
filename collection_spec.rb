require "set"

RSpec.shared_examples "a collection" do
  let(:collection) { described_class.new([1, 2, 3])}

  context "initialized with 3 items" do
    it 'says it has 3 items' do
      expect(collection.size).to eq(3)
    end
  end

  describe "#include?" do
    context "with an item that is in collection" do
      it "returns true" do
        expect(collection.include?(2)).to be_truthy
      end
    end

    context "with an item that is not in collection" do
      it "returns true" do
        expect(collection.include?(4)).to be_falsey
      end
    end
  end
end

RSpec.describe Array do
  it_behaves_like "a collection"
end

RSpec.describe Set do
  it_behaves_like "a collection"
end
