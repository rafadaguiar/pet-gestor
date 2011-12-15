# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

bruno = Usuario.create(:nome => 'Bruno Coelho', :cpf => '014.220.564-81', :email => 'bcs.cin@gmail.com', :login => 'brunocoelho')
kaka = Usuario.create(:nome => 'Karina', :cpf => '020.765.924-90', :email => 'kaka@gmail.com', :login => 'kaka')

at1 = Atividade.create(:tipo => 'Extensao', :nome => 'Oficina')
at2 = Atividade.create(:tipo => 'Pesquisa', :nome => 'IC Individual')

bruno.atividades << at1
bruno.atividades << at2

kaka.atividades << at1
kaka.atividades << at2
