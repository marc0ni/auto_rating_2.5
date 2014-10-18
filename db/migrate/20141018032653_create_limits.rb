class CreateLimits < ActiveRecord::Migration
  def change
    create_table :limits do |t|
      t.string :bipd
      t.string :medical
      t.belongs_to :submission, index: true

      t.timestamps
    end
  end
end
