class CreateBets < ActiveRecord::Migration[6.0]
  def change
    create_table :bets do |t|
      t.string :contest_id
      t.string :user_id
      t.string :amount
      t.string :pick
      t.string :status

      t.timestamps
    end
  end
end
