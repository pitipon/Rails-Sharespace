class CreateWorkspaces < ActiveRecord::Migration[5.1]
  def change
    create_table :workspaces do |t|
      t.text :name
      t.text :description
      t.text :address
      t.text :latitude
      t.text :longitude
      t.integer :price_per_day
      t.integer :owner_id
      t.text :space_type
      t.integer :capacity_max
      t.text :environment
      t.text :theme
      t.text :available_time
      t.text :catering
      t.text :security
      t.text :media
      t.text :services
      t.text :free_rooms
      t.text :parkings
      t.text :pet_friendly
      t.text :utilities
      t.text :near_location
      t.text :contact_number
      t.text :contact_name
      t.text :contact_email
      t.text :logo

      t.timestamps
    end
  end
end
