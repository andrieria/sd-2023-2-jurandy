defmodule Sistema do
  @menu "

  Menu do sistema

  =============

  1. Criar
  2. Listar
  3. Atualizar
  4. Excluir
  5. Sair

  Entre com sua opção: "


  def criar(lista) do
    IO.puts("Criar")
    coordenadas = IO.gets("Digite os pares de coordenadas x e y: ") |> 
    String.trim() |> 
    String.split() |> 
    Enum.map(&String.to_integer/1) |>
    Enum.chunk_every(2, 2, :discard)

    [coordenadas | lista]
    #lista_strings = 
    #separados = 
    #coords = 
    #agrupa os elementos em  duplas a cada dois elementos
    
    #principal()


  end

  def listar(lista) do
    IO.puts("Listar")

    Enum.each(lista, fn coordenadas ->
      #IO.inspect(Enum.join(coordenadas, " "))
      IO.inspect(coordenadas)
    end) 
    

    lista
    #IO.inspect(coords)
    #for elemento <- lista do
    #  IO.puts(elemento)
    #end
    #principal()

  end

  def alterar(lista) do
    IO.puts("Alterar")
    #principal()


  end

  def excluir(lista) do
    IO.puts("Excluir")
    #principal()

  end

  def principal(lista) do
    op = IO.gets(@menu)
    |> String.trim()
    |> String.to_integer()


    case op do

      1 ->
        principal(criar(lista))

      2 ->
        #listando = listar(coordenadas)
        principal(listar(lista))

      3->
        principal(alterar(lista))

      4 ->
        principal(excluir(lista))


      5 -> IO.puts("Até logo")

      _ -> IO.puts("Opção inválida")
          principal(lista)


    end


  end


end