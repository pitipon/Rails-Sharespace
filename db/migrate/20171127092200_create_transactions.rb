class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.text :changes
      t.text :message
      t.integer :order_id

      t.timestamps
    end
  end
end
