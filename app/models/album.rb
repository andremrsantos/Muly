class Album < ActiveRecord::Base
  attr_accessible :genero, :have, :lancado_em, :n_faixas, :nota, :titulo, :faixas_attributes

  # Relacionamentos
  belongs_to :banda
  has_many :faixas

  accepts_nested_attributes_for :faixas

  # CallBack
  before_save :atualiza_faixas

  private

  def atualiza_faixas
  	count = self.n_faixas - self.faixas.size
  	if count >= 0
  		count.times { self.faixas.create(titulo: "Nova faixa") }
  	else
  		count.abs.times do
  			last = self.faixas.last
  			last.destroy
  		end
  	end

  end

end
