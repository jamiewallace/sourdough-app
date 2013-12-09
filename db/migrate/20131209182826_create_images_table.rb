class CreateImagesTable < ActiveRecord::Migration
  def up
    create_table :images 
    add_column :images, :image, :string
    add_column :images, :user_id, :integer
    add_timestamps :images
  end

  def down
    drop_table :images
  end
end
