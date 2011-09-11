class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.date :start_on
      t.date :end_on
      t.integer :reward
      t.integer :goal

      t.timestamps
    end
  end
end
