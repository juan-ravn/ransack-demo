class AddStatusToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :status, :string
    add_reference :articles, :author, foreign_key: true
  end
end
