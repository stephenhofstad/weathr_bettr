class CreateBets < ActiveRecord::Migration[6.0]
  def change
    create_table :bets do |t|
      t.integer :contest_id
      t.integer :user_id
      t.string :amount
      t.string :pick
      t.string :status

      t.timestamps
    end
  end
end
