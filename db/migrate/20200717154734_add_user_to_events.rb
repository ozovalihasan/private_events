class AddUserToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :creator, references: :users, index: true
    add_foreign_key :events, :users, column: :creator_id
  end
end
