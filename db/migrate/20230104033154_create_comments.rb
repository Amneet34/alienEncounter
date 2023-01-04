class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :post_id
      t.text :content
      t.integer :likes_count, default: 0

      t.timestamps
    end
  end
end
