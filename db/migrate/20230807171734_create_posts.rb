class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :thumbnail
      t.text :body
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
