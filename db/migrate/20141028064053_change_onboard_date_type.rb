class ChangeOnboardDateType < ActiveRecord::Migration
  def self.up
    change_column :candidates, :onboard_date, :string
  end
  
  def self.down
    change_column :candidates, :onboard_date, :integer
  end
end
