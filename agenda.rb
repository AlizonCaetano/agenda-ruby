# adicionar, editar e remover contato
# contato terão as seguintes informações: nome e telefone
# poderemos ver todos os contatos registrados ou somente um contato


@agenda = [
    { nome: "Alison", telefone: "99993333"},
    { nome: "Fulano", telefone: "33339999"}

]

def todos_contatos
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
    end
    puts "============================================"
end

def adicionar_contato
    print "Nome: "
    nome = gets.chomp
    print "Telefone: "
    telefone = gets.chomp

    @agenda << { nome: nome, telefone: telefone}
end

def ver_contato
    print "Qual nome você deseja: "
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
            puts "#{contato[:nome]} - #{contato[:telefone]}"
        end
    end
end

def editar_contato
    print "Qual nome deseja editar: "
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase == (nome.downcase)
            puts "Nome para editar (Se quiser manter, pressione enter.): "
            nome_salvo = contato[:nome]

            contato[:nome] = gets.chomp
            contato[:nome] = contato[:nome].empty? ? nome_salvo : contato[:nome]

            print "Numero para editar (Se quiser manter, preesione enter.): "
            telefone_salvo = contato[:nome]

            contato[:telefone] = gets.chomp
            contato[:telefone] = contato[:telefone].empty? ? nome_salvo : contato[:telefone]
        end
    end
end

def
   print "Qual nome deseja apagar?: "
   nome = gets.chomp

   @agenda.each do |contato|
    if contato[:nome].downcade == nome.downcase
        indice = @agenda.index(contato)
        @agenda.delete_at(indice)
        break
    end

end


loop do

puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair\n"
    codigo = gets.chomp.to_i

    case
    when codigo == 0
        puts "Até mais!"
        break
    when codigo == 1
        todos_contatos
    when codigo == 2
        adicionar_contato
    when codigo == 3
        ver_contato
    when codigo == 4
        editar_contato
    when codigo == 5
        excluir_contato
    else 
        puts "Função não existe, por favor insira uma opção válida"
    end


end