class AddPhotoToProduto < ActiveRecord::Migration
  def change
    add_column :produtos, :photo_file_name, :string
    add_column :produtos, :photo_content_type, :string
    add_column :produtos, :photo_file_size, :integer
  end
end
