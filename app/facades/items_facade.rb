class ItemsFacade
  def self.items_by_merchant_id(id)
    items = ItemsService.items_by_merchant_id(id)

    items[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
