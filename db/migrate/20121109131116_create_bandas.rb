class CreateBandas < ActiveRecord::Migration
  def change
    create_table :bandas do |t|
      t.string :name
      t.string :genero
      t.text :bio
      t.date :fundada_em

      t.timestamps
    end
  end
end
