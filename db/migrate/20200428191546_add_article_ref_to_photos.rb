class AddArticleRefToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_reference :photos, :article, foreign_key: true
  end
end
