class Product
  include ActiveModel::Model
  include ActiveModel::Serializers::JSON
  include ActiveModel::Serializers::Xml
  #require 'florist'
  @f_api = Florist.new
  
  attr_accessor :code, :description, :large, :small, :price, :name, :dimension, 
                :product_type, :occasions
                
  def attributes
    {'code' => nil, 
     'description' => nil, 
     'large' => nil, 
     'small' => nil,
     'price' => nil,
     'name' => nil,
     'dimension' => nil,
     'product_type' => nil,
     'occasions' => nil
    }
  end
  
  #This method will initialize the attributes listed above
  def initialize (attributes={})
    super   
  end
  
  #Factory Girl expects this to be here
  def new_record?
    true
  end
  
  #This method returns all the products from a certain category
  def self.find_by_category(category)
    prod_by_cat = @f_api.get_products(category)
    #create an array of Product Objects to return
    product_objects = []
    prod_by_cat.each do |product|
      product_objects << Product.new(product)
    end
    product_objects
  end
  
  def all
  
  end
  
  
  #This method returns a certain product by code 
  def self.find_by_code(code)
    Product.new(@f_api.get_product(code))
  end
  
  #This method returns all products that contain these keywords
  def self.find_by_keyword(regex)
  end
end