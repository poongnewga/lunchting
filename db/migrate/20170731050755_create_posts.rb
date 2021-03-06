class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :hits, default: 0

      t.belongs_to :user
      t.timestamps
    end
  end
end
