class CreateTrainings < ActiveRecord::Migration
  def self.up
    create_table :trainings do |t|
      t.string :name
      t.string :work_firm
      t.string :nos
      t.string :report_date

      t.timestamps
    end
  end

  def self.down
    drop_table :trainings
  end
end
