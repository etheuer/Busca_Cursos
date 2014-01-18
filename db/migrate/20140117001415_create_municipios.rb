class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.timestamps
      t.string :nome, limit:80
    end
  end
end
