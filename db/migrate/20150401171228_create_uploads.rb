class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.belongs_to :user, index: true
      t.text :description
      t.attachment :asset

      t.timestamps null: false
    end
    add_foreign_key :uploads, :users
  end
end
