class ChangeCandidateIdType < ActiveRecord::Migration
  def self.up
    change_column :candidates, :candidate_id, :string
  end
  
  def self.down
    change_column :candidates, :candidate_id, :integer
  end
end
