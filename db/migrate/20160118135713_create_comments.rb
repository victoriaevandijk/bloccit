class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
    create_table :comments do |t|
      t.text :body
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
