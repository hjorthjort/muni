class AddHeaderToMunicipality < ActiveRecord::Migration[5.0]
  def change
    add_column :municipalities, :header_url, :string
  end
end
