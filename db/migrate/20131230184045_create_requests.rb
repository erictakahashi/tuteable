class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :category
      t.string :description
      t.float :sessiontime
      t.string :subcategory
      t.string :subject
      t.integer :urgency_id
      t.integer :lastping
      t.integer :tutor_id
      t.integer :user_id
      t.boolean :paid
      t.float :price

      t.timestamps
    end
  end
end
