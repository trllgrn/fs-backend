require 'spec_helper'

describe Product do
  it "has a valid factory" do
    build(:product).should be_a_new(Product)
  end
  it "is invalid without a name"
  it "is invalid without a description"
  it "is invalid without a price"
  it "is invalid without a code"
  it "is invalid without a large photo"
  it "is invalid without a thumbnail photo"
  it "is invalid without a dimension"
  it "is invalid without a product_type"
  it "is invalid without an occasion category"
end