defmodule ElixirAula2 do
  @moduledoc false

  def delete_all(a, [el | rst]) do
    if a == el do
      delete_all(a, rst)
    else
      [el | delete_all(a, rst)]
    end
  end

  def delete_all(_a, []) do
    []
  end

  defp quantos_iguais_a(a, [el | rst]) do
    if a == el do
      1 + quantos_iguais_a(a, rst)
    else
      quantos_iguais_a(a, rst)
    end
  end

  defp quantos_iguais_a(_a, []) do
    0
  end

  # Definindo função principal de contagem
  def quantos_enguais([a | rst]) do
    a = quantos_iguais_a(a, rst)

    if a > 0 do
      a + 1 + quantos_enguais(delete_all(a, rst))
    else
      quantos_enguais(delete_all(a, rst))
    end
  end

  def quantos_enguais([]) do
    0
  end
end
