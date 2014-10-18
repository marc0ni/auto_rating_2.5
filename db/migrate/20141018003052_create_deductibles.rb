class CreateDeductibles < ActiveRecord::Migration
  def change
    create_table :deductibles do |t|
      t.decimal :spec_causes
      t.string :comp
      t.string :coll
      t.belongs_to :submission, index: true

      t.timestamps
    end
  end
end
