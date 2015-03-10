class CreateWorkRecords < ActiveRecord::Migration
  def change
    create_table :work_records do |t|
      t.integer :user_id
      t.text :content
      t.date :record_date

      t.timestamps null: false
    end
  end
end
