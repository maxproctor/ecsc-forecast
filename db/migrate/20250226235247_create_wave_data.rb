class CreateWaveData < ActiveRecord::Migration[7.2]
  def change
    create_table :wave_data do |t|
      t.string :station_id
      t.datetime :timestamp
      t.float :latitude
      t.float :longitude
      t.float :depth
      t.float :significant_wave_height
      t.float :max_wave_height
      t.float :dominant_wave_period
      t.float :wind_direction
      t.float :wind_speed
      t.float :air_pressure
      t.float :air_temperature
      t.float :sea_surface_temperature

      t.timestamps
    end
  end
end
