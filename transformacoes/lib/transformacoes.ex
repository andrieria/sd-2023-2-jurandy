defmodule Transformacoes do


  @menu "

  Menu das transformações

  =============

  1. Criar vértices
  2. Rotação
  3. Translação
  4. Reflexão
  5. Sair

  Entre com sua opção: "

  def criar(lista) do
    IO.puts("Criar")
    coordenadas = IO.gets("Digite os pares de coordenadas x e y: ") |> 
    String.trim() |> 
    String.split() |> 
    Enum.map(&String.to_integer/1) |>
    Enum.chunk_every(2, 2)
    

    IO.puts("Coordenadas criadas com sucesso.")

    IO.puts("Método criar")
    IO.inspect(coordenadas ++ lista)
    coordenadas ++ lista

  end

  #def ponto_rotacao([x, y], angulo) do
  def ponto_rotacao([x, y], angulo) do

    #[x, y] = IO.gets("Qual desses pontos utilizará como centro de rotação (digite no formato x y)?")

    #angulo = IO.gets("Digite o ângulo em graus:")
    #angulo_em_radianos = angulo * :math.pi / 180

    x_rotacionado=(x * :math.cos(angulo))-(y * :math.sin(angulo))
    y_rotacionado = (x * :math.sin(angulo)) + (y * :math.cos(angulo))
    [x_rotacionado, y_rotacionado]
  end

  def rotacao(lista) do
    IO.puts("Esta é a sua lista atual:")
    IO.inspect(lista)
    angulo = IO.gets("Digite o ângulo em graus:") |> String.trim() |> String.to_integer()
    angulo_em_radianos = angulo * :math.pi / 180
    vertices_rotacionados = Enum.map(lista, 
    fn [x, y] -> ponto_rotacao([x, y], angulo_em_radianos) end)

    IO.puts("Rotação concluída")
    IO.inspect(vertices_rotacionados)
    
    #fn vertice -> ponto_rotacao(vertice, angulo_em_radianos) end)
    #lista = vertices_rotacionados
    #lista
  end

      #def rotate_polygon(%Polygon{vertices: lista}, angle) do
   # vertices_rotacionados = Enum.map(lista, fn {x, y} ->
     # rotate_point({x, y}, angle)
    #end)
    #%Polygon{vertices: vertices_rotacionados}
 # end


  def translacao(lista) do
    IO.puts("Translação do Polígono")
    translacao_x = IO.gets("Digite a quantidade de translação para x: ") |> String.trim() |> String.to_integer()
    translacao_y = IO.gets("Digite a quantidade de translação para y: ") |> String.trim() |> String.to_integer()

    nova_lista = Enum.map(lista, fn [x, y] -> [x + translacao_x, y + translacao_y] end)

    lista = nova_lista
    lista
  end

  def reflexao(lista) do
    IO.puts("Reflexão do Polígono")
    IO.puts("Digite o eixo de reflexão:")
    IO.puts("1. Reflexão em relação ao eixo x")
    IO.puts("2. Reflexão em relação ao eixo y")

    opcao = IO.gets(" |> ") |> String.trim() |> String.to_integer()

    case opcao do
      1 ->
        nova_lista = Enum.map(lista, fn [x, y] -> [x, -y] end)
        lista = nova_lista
        lista

      2 ->
        nova_lista = Enum.map(lista, fn [x, y] -> [-x, y] end)
        lista = nova_lista
        lista

      _ ->
        IO.puts("Opção inválida.")
        lista
    end
  end

  def principal(lista) do
    op = IO.gets(@menu)
    |> String.trim()
    |> String.to_integer()


    case op do

      1 ->
        principal(criar(lista))

      2 ->
        principal(rotacao(lista))

      3 -> 
        principal(translacao(lista))
      
      4 -> 
        principal(reflexao(lista))

      5 -> 
        IO.puts("Até logo")
      
      _ -> IO.puts("Opção inválida")
        principal(lista)
    end

  end
end

Transformacoes.principal([])
