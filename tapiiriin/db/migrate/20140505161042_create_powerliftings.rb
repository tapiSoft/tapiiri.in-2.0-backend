class CreatePowerliftings < ActiveRecord::Migration
  def change
    create_table :powerliftings do |t|
      t.string :move
      t.decimal :result

      t.timestamps
    end
  end
end
