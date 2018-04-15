Spree::Product.class_eval do
    delegate :sale_price, :sale_price=, to: :master
end
