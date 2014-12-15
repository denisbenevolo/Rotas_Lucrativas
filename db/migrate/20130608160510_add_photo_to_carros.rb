class AddPhotoToCarros < ActiveRecord::Migration
  def change
    add_column :carros, :photo_file_name, :string
    add_column :carros, :photo_content_type, :string
    add_column :carros, :photo_file_size, :integer
  end
end
