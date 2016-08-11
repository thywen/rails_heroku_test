class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :test
      t.integer :test_id

      t.timestamps null: false
    end
  end
end
