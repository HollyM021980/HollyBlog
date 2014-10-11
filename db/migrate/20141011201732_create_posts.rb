class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.text :content
      t.belongs_to :author, index: true
      t.belongs_to :category, index: true

      t.timestamps null: false
    end
  end
end
