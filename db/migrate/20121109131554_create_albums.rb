class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :titulo
      t.string :genero
      t.date :lancado_em
      t.integer :n_faixas
      t.integer :nota
      t.boolean :have
      t.references :banda

      t.timestamps
    end
    add_index :albums, :banda_id
  end
end
