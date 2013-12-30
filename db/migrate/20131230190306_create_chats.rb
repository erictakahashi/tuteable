class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :category
      t.text :content
      t.string :offer
      t.string :subcategory
      t.string :subject
      t.integer :tutor_id
      t.integer :user_id
      t.integer :request_id
      t.float :sessiontime
      t.boolean :viewed

      t.timestamps
    end
  end
end
