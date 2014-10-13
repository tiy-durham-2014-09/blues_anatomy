class AddIndicesToDoctorsAndPatients < ActiveRecord::Migration
  def change
    add_index :doctors, :name
    add_index :patients, :name
  end
end
