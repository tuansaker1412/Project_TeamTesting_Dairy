class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :date
      t.text :body
      t.text :abc
      t.timestamps null: false
    end
  end
end
