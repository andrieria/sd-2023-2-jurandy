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

  end

  def listar(lista) do
    IO.puts("Listar")

    Enum.each(lista, fn coordenadas ->
      IO.inspect(coordenadas)
    end) 
    
    lista

  end

  def alterar(lista) do
    IO.puts("Alterar")
    resp = IO.gets("Digite o par que você deseja alterar (formato: x y):") |> String.trim |> String.split() |> Enum.map(&String.to_integer/1)
    [x, y] = resp
    IO.inspect([x, y])
    indice = Enum.find_index(lista, fn v -> v == [x, y] end) 
    resp2 = IO.gets("Digite o novo par (formato: x y):") |> String.trim |> String.split() |> Enum.map(&String.to_integer/1)
    [a, b] = resp2
    List.replace_at(lista, indice, [a, b]) 

    lista
    #Enum.find(lista, fn alter -> alter==[x,y] end) feito por mim




    #nova_coordenada = Enum.map(coordenadas, fn [x, y] ->
      #if x == 2 and y == 7 do
    #[x, 10]
 #else
   # [x, y]
  #end
    #resp = IO.gets("Qual é o par de coordenada que você quer alterar os valores?") |> String.trim() |> String.split()
    
    #lista = Enum.map(coordenadas, fn  ->
    #  if x == 2 and y == 7 do
    #[x, 10]
  #else
    #[x, y]
  #end
#end)


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