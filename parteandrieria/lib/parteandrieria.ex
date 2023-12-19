defmodule Parteandrieria do
  
#Questão1
  def olamundo() do
    IO.puts("Olá mundo")
  end

#Questão2
  def olanome(nome) do
    IO.puts("Olá " <> nome)
  end

#Questão3
  def nomenascimento(nome, ano_nascimento) when is_integer(ano_nascimento) do
    idade=2023-ano_nascimento
    idade_string = Integer.to_string(idade)
    IO.puts("Olá "<>nome<>". Você tem "<>idade_string<>" anos.")
  end

#Questão4
  def imc(nome, peso, altura) do
    mult=altura*altura
    imc=peso/mult
    imc_string = Float.to_string(imc)
    IO.puts("Olá "<>nome<>". Seu IMC é de "<>imc_string<>".")
  end

#Questão5
  #@spec sequencia(list()) :: :ok
  def sequencia(lista) do
    #Enum.sort(lista,:desc)
    Enum.sort(lista,&(&1 >= &2))
  end

#Questão6
  def parmatricula() do
    IO.puts("Digite seu nome:")
    nome = IO.gets("") |> String.trim()

    #IO.puts("Você digitou: #{nome}")
    
    IO.puts("Digite sua matrícula:")
    matricula = IO.gets("") |> String.trim()
    
    dicio=%{nome => matricula}
    #IO.inspect(dicio)

    # Recuperar um valor usando a chave
    #valor_chave2 = meu_mapa["chave2"]
    #IO.puts(valor_chave2)
  end

#Questão7
  def menu() do
    IO.puts("Sistema Final\n===================\n\n")
    IO.puts("1.Criar\n2.Listar\n3.Atualizar\n4.Excluir\n5.Sair\n")
    IO.puts("Entre com sua opção:")
    opcao=IO.gets("") |> String.trim()
    op = String.to_integer(opcao)

    case op do
      1 ->
      IO.puts("Quantos lados possui o polígono?")
      resp=IO.gets("")
      IO.puts(resp)
    # Código a ser executado se a expressão corresponder a padrao1
      2 ->
      IO.puts("Quantos lados possui o polígono?")
      resp=IO.gets("")
      IO.puts(resp)
    # Código a ser executado se a expressão corresponder a padrao2
      3 ->
      IO.puts("Quantos lados possui o polígono?")
      resp=IO.gets("")
      IO.puts(resp)
    # Código a ser executado se a expressão não corresponder a nenhum dos padrões anteriores
      4 -> 
      IO.puts("Quantos lados possui o polígono?")
      resp=IO.gets("")
      IO.puts(resp)

      5 -> 
      IO.puts("Quantos lados possui o polígono?")
      resp=IO.gets("")
      IO.puts(resp)

      _ ->
      IO.puts("Número inválido")
  


    end
  end


end
