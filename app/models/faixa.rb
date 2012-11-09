class Faixa < ActiveRecord::Base
  attr_accessible :letra, :titulo

  # Relacionamentos
  belongs_to :album
  delegate :banda, to: :album, allow_nil: true
end
