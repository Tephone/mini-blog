class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :profile, :text, default: ""
    add_column :users, :blog_url, :text, default: ""
  end
end
