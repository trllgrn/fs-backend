require 'spec_helper'

describe Florist do
  f = Florist.new
  it "returns a single product from the FO webservice, given a code" do
    p_hash = f.get_product('E3-4811')
    p_hash.should_not == nil
  end
  it "returns an array of products from the FO webservice, given a category" do 
    p_array = f.get_products('lr')
    p_array.should_not == nil
  end
end