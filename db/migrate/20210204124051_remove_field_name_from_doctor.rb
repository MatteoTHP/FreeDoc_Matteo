class RemoveFieldNameFromDoctor < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :speciality, :string
  end
end
