class Realizacao < ActiveRecord::Base
  belongs_to :atividade
  has_many :etapa_realizacaos
end
