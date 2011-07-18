class AddReportDateToAmcs < ActiveRecord::Migration
  def self.up
    add_column :amcs, :report_date, :string
  end

  def self.down
    remove_column :amcs, :report_date
  end
end
