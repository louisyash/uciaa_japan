class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :start_time
      t.date :end_time
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :facebook_url

      t.timestamps
    end
  end
end
