class Florist
  require 'savon'
  API_KEY = ENV['FO_API_KEY']
  API_PASS = ENV['FO_API_PASS']
  WSDL_URL = 'https://www.floristone.com/webservices4/flowershop.cfc?wsdl'
  
  @client = nil
  
  def initialize
    @client = Savon.client(wsdl: WSDL_URL)  
  end
  
  def get_product(code)
    item_query = {api_key: API_KEY, api_password: API_PASS, item_code: code}
    #Make the call to the web service
    response = @client.call(:get_product2013, message: item_query)
    
    #Remove unwanted data in the hash
    #response.body[:get_product_response][:get_product_return][:product].delete(:"@xsi:type")
    
    #Build a hash with the product name, code, image, thumbnail and description
    product_attribs = format_hash(response.body[:get_product2013_response][:get_product2013_return][:product])
    
    product_attribs #Return the product attributes hash
  end
  
  def get_products(category) #Validate the category field?
    #Define the category query
    category_query = {api_key: API_KEY, api_password: API_PASS, category: category,
                      num_products: 200, start_at: 1}
    #Make the call to the web service
    response = @client.call(:get_products2013, message: category_query)
    
    #Create a product array to return
    products = []
    
    #Remove the unwanted data in the hash
    response.body[:get_products2013_response][:get_products2013_return][:products][:products].each do |p_hash|
      p_hash = format_hash(p_hash)
      products << p_hash
    end
    
    products #Return the products array
  end
  
  #Implement getDeilveryDate
  #Implement getTotal
  #Implement placeOrder
  
  private
  
  def format_hash (hash)
    #Gets the hash formatted correctly to be turned into a Product class
    #1. Remove the unnecessary :"xsi:type" symbol
    #2. Change the price value into a float
    #3. Stringify the keys
    #4. Assign the occasions array to the occasions symbol
    
    if (hash != nil) 
      hash.delete(:"@xsi:type")
      hash.delete(:french_name)
      hash.delete(:french_description)
      hash[:price] = hash[:price].to_f
      hash[:occasions] = hash[:occasions][:occasions]
      hash.stringify_keys!
    end
    hash
  end

end