class AddUidAndUrlToEvent < ActiveRecord::Migration
  def change
    add_column :events, :uid, :integer
    add_column :events, :url, :string
  end
end
