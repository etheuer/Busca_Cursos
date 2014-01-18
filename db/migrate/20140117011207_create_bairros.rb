class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.timestamps
      t.string :nome, limit:80
    end
  end
end
