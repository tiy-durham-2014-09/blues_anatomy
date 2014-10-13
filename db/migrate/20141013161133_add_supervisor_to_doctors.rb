class AddSupervisorToDoctors < ActiveRecord::Migration
  def change
    add_reference :doctors, :supervisor, index: true
  end
end
