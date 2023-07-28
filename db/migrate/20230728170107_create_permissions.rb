class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions do |t|
      t.boolean :create
      t.boolean :edit
      t.boolean :remove
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
