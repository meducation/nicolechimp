class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :email_id, null: false, index: true
      t.string :title, null: false
      t.string :url, null: false
      t.string :site, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
