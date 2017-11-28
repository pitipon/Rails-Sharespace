class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.text :image_url
      t.integer :id_workspace
      t.text :title

      t.timestamps
    end
  end
end
