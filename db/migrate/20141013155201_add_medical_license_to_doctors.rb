class AddMedicalLicenseToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :medical_license, :integer
  end
end
