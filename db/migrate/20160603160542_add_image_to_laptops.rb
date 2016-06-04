class AddImageToLaptops < ActiveRecord::Migration
  def change
    add_column :laptops, :image_file_name, :string
    add_column :laptops, :image_content_type, :string
    add_column :laptops, :image_file_size, :integer
    add_column :laptops, :image_updated_at, :datetime
  end
end
