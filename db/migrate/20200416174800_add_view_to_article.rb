class AddViewToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :view, :int
  end
end
