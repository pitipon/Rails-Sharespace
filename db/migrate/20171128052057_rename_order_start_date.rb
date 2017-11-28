class RenameOrderStartDate < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :state_date, :start_date
  end
end
