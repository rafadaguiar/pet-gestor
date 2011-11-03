class Atividade < ActiveRecord::Base
  has_many :etapa_atividades
  has_many :realizacaos
  has_and_belongs_to_many :usuarios
end
