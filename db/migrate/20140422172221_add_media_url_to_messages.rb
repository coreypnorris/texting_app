class AddMediaUrlToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :mediaurl, :string
  end
end
