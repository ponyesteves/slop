class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
