bruno = Usuario.create(:nome => 'Bruno',
                       :cpf => '011.222.333-44',
                       :email => 'bruno@gmail.com',
                       :password => '123456')

joao = Usuario.create(:nome => 'Joao',
                      :cpf => '022.333.444-55',
                      :email => 'joao@gmail.com',
                      :password => '123456')

at1 = Atividade.create(:tipo => 'Extensao', :nome => 'Oficina')
at2 = Atividade.create(:tipo => 'Pesquisa', :nome => 'IC Individual')

bruno.atividades << at1
bruno.atividades << at2

joao.atividades << at1
joao.atividades << at2
