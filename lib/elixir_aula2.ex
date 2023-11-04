defmodule ElixirAula2 do
  @moduledoc false

  # Delete every occurrence of the element "a" in a list
  defp delete_all(a, [el | rst]) do
    if a == el do
      delete_all(a, rst)
    else
      [el | delete_all(a, rst)]
    end
  end

  defp delete_all(_a, []), do: []

  # Count occurrences of element a in a list
  defp quantos_iguais_a(a, [el | rst]) do
    if a == el do
      1 + quantos_iguais_a(a, rst)
    else
      quantos_iguais_a(a, rst)
    end
  end

  defp quantos_iguais_a(_a, []), do: 0

  # Definindo função principal de contagem
  def quantos_enguais([a | rst]) do
    a = quantos_iguais_a(a, rst)

    if a > 0 do
      a + 1 + quantos_enguais(delete_all(a, rst))
    else
      quantos_enguais(delete_all(a, rst))
    end
  end

  def quantos_enguais([]), do: 0

  # Returns true if all 3 elements are different
  def todos_diferentes?(a, b, c) do
    a != b and b != c and a != c
  end

  # Returns n^2
  def elevado_dois(n), do: n * n

  # Returns n^4
  def elevado_quatro(n), do: elevado_dois(n) * elevado_dois(n)

  # Verica se str é um palíndromo
  def palindromo?(str) do
    String.equivalent?(str, String.reverse(str))
  end

  # Verifica se as medidas recebidas são de um triângulo
  def verifica_triangulo(a, b, c) do
    a + b > c and a + c > b and b + c > a
  end

  # Retorna o sinal de num ou 0
  def sinal(num) do
    cond do
      num < 0 -> -1
      num == 0 -> 0
      true -> 1
    end
  end

  # Retorna o menor de dois numeros
  def menor(a, b) do
    if a < b do
      a
    else
      b
    end
  end

  # Retorna o menor valor de três numeros
  def menor_tres(a, b, c) do
    x = menor(a, b)
    menor(x, c)
  end
end
