class AddApiRefToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :api_ref, :string
  end
end
