class Banda < ActiveRecord::Base
  attr_accessible :bio, :fundada_em, :genero, :name

  # Relacionamentos
  has_many :albums
  has_many :faixas, through: :albums

end
