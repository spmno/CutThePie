class AddDurationToWorkRecord < ActiveRecord::Migration
  def change
    add_column :work_records, :duration, :integer
  end
end
