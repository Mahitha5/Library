class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :author
      t.number :edition

      t.timestamps
    end
  end
end
