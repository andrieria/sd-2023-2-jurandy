defmodule Sistema do


  def criar() do
    resp = IO.gets("Digite os pares de coordenadas x e y: ")
    lista_strings = String.split(resp)
    separados = Enum.map(lista_strings, &String.to_integer/1)
    coords = Enum.chunk_every(separados, 2, 2, :discard)
    #agrupa os elementos em  duplas a cada dois elementos
    {coords, estado}
  end

  def listar() do
    lista = criar()
    IO.inspect(lista)
  end


  def menu() do
    IO.puts("Sistema Final\n===================\n\n")
    IO.puts("1.Criar\n2.Listar\n3.Atualizar\n4.Excluir\n5.Sair\n")
    IO.puts("Entre com sua opção:")
    opcao=IO.gets("") |> String.trim()
    op = String.to_integer(opcao)


    case op do
      1 -> x = criar()

      2 -> listar()
      _ ->
      IO.puts("Número inválido")
    end
  end

end
