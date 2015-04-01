class CreateLikings < ActiveRecord::Migration
  def change
    create_table :likings do |t|
      t.belongs_to :user, index: true
      t.belongs_to :upload, index: true

      t.timestamps null: false
    end

    add_foreign_key :likings, :users
    add_foreign_key :likings, :uploads
  end
end
