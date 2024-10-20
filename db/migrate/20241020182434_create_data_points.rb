class CreateDataPoints < ActiveRecord::Migration[7.2]
  def change
    create_table :data_points do |t|
      t.integer :value
      t.datetime :recorded_at

      t.timestamps
    end
  end
end
