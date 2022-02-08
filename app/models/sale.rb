class Sale < ApplicationRecord
  belongs_to :reservation
  enum payment_method: [:PayPal, :MercadoPago, :Other]
end
