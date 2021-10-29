class ItemsService
  def self.items_by_merchant_id(id)
    response = conn.get("api/v1/merchants/#{id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end
end
