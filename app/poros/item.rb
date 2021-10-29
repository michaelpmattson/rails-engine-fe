class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(params)
    @id          = params[:id]
    @name        = params[:attributes][:name]
    @description = params[:attributes][:description]
    @unit_price  = params[:attributes][:unit_price]
    @merchant_id = params[:attributes][:merchant_id]
  end
end
