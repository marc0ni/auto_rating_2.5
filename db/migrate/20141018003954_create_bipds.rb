class CreateBipds < ActiveRecord::Migration
  def change
    create_table :bipds do |t|
      t.string :medical
      t.belongs_to :submission, index: true

      t.timestamps
    end
  end
end
