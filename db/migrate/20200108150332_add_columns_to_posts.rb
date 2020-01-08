class AddColumnsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :latitude, :float
    add_column :posts, :longitude, :float
    add_column :posts, :city, :string
    add_column :posts, :zip, :string
    add_column :posts, :street, :string
  end
end
