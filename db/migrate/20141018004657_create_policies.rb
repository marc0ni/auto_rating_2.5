class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :policy_no
      t.belongs_to :submission, index: true
      t.belongs_to :proposal, index: true

      t.timestamps
    end
  end
end
