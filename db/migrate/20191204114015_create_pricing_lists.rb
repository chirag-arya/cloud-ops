class CreatePricingLists < ActiveRecord::Migration[5.2]
  def change
    create_table :pricing_lists do |t|
      t.json :data
      t.datetime :date
      t.timestamps
    end
  end
end
