class CreateWorkspaces < ActiveRecord::Migration[5.1]
  def change
    create_table :workspace do |t|
      t.integer :price_per_day
      t.text :owner_id
      t.text :space_type
      t.integer :capacity_max
      t.text :environment
      t.text :theme
      t.text :available_time
      t.boolean :catering
      t.boolean :security
      t.text :media
      t.text :services
      t.text :free_rooms
      t.text :pet_friendly
      t.text :utilities
      t.text :address
      t.text :near_location
      t.integer :contact_number
      t.text :contact_name
      t.text :email

      t.timestamps
    end
  end
end
