class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name, null: false
      t.string :speciality, default: "General Practice"

      t.timestamps
    end
  end
end
