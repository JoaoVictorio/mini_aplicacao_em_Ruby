INSERIR_RECEITA = 1
VISUALISAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

def bem_vindo()
    puts 'Bem-vindo ao cookbook, sua rede de receitas'
end

def menu()
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALISAR_RECEITAS}] Ver todas as receitas"
    puts "[#{BUSCAR_RECEITAS}] Buscar Receitas"
    puts "[#{SAIR}] Sair"

    print = "Escolha uma opção: "
    return gets.to_i()
end 

def inserir_receita()
    puts 'Digite o nome da receita: '
    nome = gets.chomp() 
    puts 'Digite o tipo da receita: '
    tipo = gets.chomp() 
    
    
    puts 
    puts "Receita #{nome} cadastrada com sucesso!"
    puts 
    return { nome: nome, tipo: tipo }  
end   

def imprimir_receitas(receitas)
    puts "======= Receitas Cadastradas ======="
    receitas.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts 
    if receitas.empty?
    puts "Nenhuma receita Cadastrada"
end
end

#def buscar_receitas(receitas)


bem_vindo()

receitas = []

opção = menu()

loop  do 
  if(opção == INSERIR_RECEITA)
  receitas << inserir_receita()
elsif(opção == VISUALISAR_RECEITAS)
    imprimir_receitas(receitas)
elsif(opção == SAIR)
   break
else
   puts "Opção Inválida"
end
 
opção = menu()
end

puts
puts 'Obrigado por usar o cookbook, até logo!'