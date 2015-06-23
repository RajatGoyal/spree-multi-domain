Spree::ShippingRate.class_eval do
  def self.from_current_store(current_store)
    joins(shipping_method: :store_shipping_methods).where(spree_store_shipping_methods: {store_id: current_store.id})
  end
end