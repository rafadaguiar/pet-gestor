class ResponsavelAtividade < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :atividade
end
