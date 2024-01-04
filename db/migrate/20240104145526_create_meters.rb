class CreateMeters < ActiveRecord::Migration[7.0]
  def change
    create_table :meters do |t|
      t.string :meter_number

      t.timestamps
    end
  end
end
