class ChangeMediaUrlOnMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :mediaurl
    add_attachment :messages, :image
  end
end
