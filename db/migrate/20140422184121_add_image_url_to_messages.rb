class AddImageUrlToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :image_url, :string
  end
end
