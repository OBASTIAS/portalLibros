class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.integer :paymentMethod
      t.references :reservation, foreign_key: true

      t.timestamps
    end
  end
end
