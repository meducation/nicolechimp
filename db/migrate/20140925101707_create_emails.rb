class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :title, null: false
      t.integer :newsletter, index: true, null: false
      t.text :introduction, null: false
      t.text :conclusion, null: false

      t.timestamps
    end
  end
end
