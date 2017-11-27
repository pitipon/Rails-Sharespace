class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.text :remark
      t.integer :user_id
      t.integer :workspace_id
      t.date :state_date
      t.date :end_date
      t.text :state

      t.timestamps
    end
  end
end
