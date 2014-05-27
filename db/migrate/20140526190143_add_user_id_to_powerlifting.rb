class AddUserIdToPowerlifting < ActiveRecord::Migration
  def change
    add_column :powerliftings, :user_id, :integer
  end
end
