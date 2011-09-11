class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.date :start_on
      t.date :end_on
      t.integer :reward
      t.integer :goal
      t.text :taunt

      t.string :challenger_token
      t.string :challenger_name

      t.string :challengee_name
      t.string :challengee_email
      t.string :challengee_token

      t.string :email_token

      t.timestamps
    end

    add_index :challenges, :challenger_token
    add_index :challenges, :challengee_token
    add_index :challenges, :email_token, :unique => true
  end
end
