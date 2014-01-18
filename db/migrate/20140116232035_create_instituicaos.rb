class CreateInstituicaos < ActiveRecord::Migration
  def change
    create_table :instituicoes do |t|
      t.timestamps
      t.string :nome, limit:80
      t.string :email, limit:80
      t.string :url, limit:80
    end
  end
end
