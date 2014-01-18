class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.timestamps
      t.string :nome, limit:80
    end
  end
end
