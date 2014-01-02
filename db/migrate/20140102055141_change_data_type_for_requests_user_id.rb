class ChangeDataTypeForRequestsUserId < ActiveRecord::Migration
  def up
    change_table :requests do |t|
      t.remove :user_id, :tutor_id
      t.integer :user_id
      t.integer :tutor_id
    end
  end

  def down
    change_table :requests do |t|
      t.remove :user_id, :tutor_id
      t.integer :user_id
      t.integer :tutor_id
    end
  end
end
