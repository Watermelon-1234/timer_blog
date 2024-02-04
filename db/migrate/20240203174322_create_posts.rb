class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :nickname
      t.string :title
      t.text :body
      t.datetime :count_down_to

      t.timestamps
    end
  end
end
