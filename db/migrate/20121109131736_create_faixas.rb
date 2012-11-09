class CreateFaixas < ActiveRecord::Migration
  def change
    create_table :faixas do |t|
      t.string :titulo
      t.text :letra
      t.references :album

      t.timestamps
    end
    add_index :faixas, :album_id
  end
end
