class CreateCheckOuts < ActiveRecord::Migration[6.1]
  def change
    create_table :check_outs do |t|
      t.date :due_date
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
