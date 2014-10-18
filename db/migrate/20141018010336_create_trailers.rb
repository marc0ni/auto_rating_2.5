class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :type
      t.string :territory
      t.string :radius_class
      t.string :year
      t.decimal :cost_new
      t.string :age_group
      t.string :load_capacity

      t.timestamps
    end
  end
end
