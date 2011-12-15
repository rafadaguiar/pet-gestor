# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

bruno = Usuario.new
bruno.nome = 'Bruno Coelho'
bruno.cpf = '014.220.564-81'
bruno.email = 'bcs@gmail.com'
bruno.login = 'brunocoelho'
bruno.password = '123456'
bruno.save

kaka = Usuario.new
kaka.nome = 'Karina'
kaka.cpf = '020.765.924-90'
kaka.email = 'kaka@gmail.com'
kaka.login = 'kaka'
kaka.password = '123456'
kaka.save

at1 = Atividade.create(:tipo => 'Extensao', :nome => 'Oficina')
at2 = Atividade.create(:tipo => 'Pesquisa', :nome => 'IC Individual')

bruno.atividades << at1
bruno.atividades << at2

kaka.atividades << at1
kaka.atividades << at2
