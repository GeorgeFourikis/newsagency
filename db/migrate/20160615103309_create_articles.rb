class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :header
      t.text :article
      t.string :place

      t.timestamps
    end
  end
end
