class CreateFriendVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :friend_variants do |t|
      t.string :phone2
      t.references :friends, null: false, foreign_key: true

      t.timestamps
    end
  end
end
