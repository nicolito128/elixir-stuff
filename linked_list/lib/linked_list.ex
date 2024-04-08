defmodule LinkedList do
  @moduledoc """
  Documentation for `LinkedList`.
  """

  def get_fruits do
    [ "Apple", "Banana", "Pear", "Grape", "Orange" ]
  end

  def head(list), do: hd list

  def tail(list), do: tl list

  # - Remove Dupe -
  # Dada una lista ordenada de enteros,
  # remover los elementos repetidos y
  # devolver la nueva lista

  # Aridad 1
  def rem_dup([]), do: []
  def rem_dup([ first | t ]), do: [first | rem_dup(t, first)]

  # Aridad 2
  def rem_dup([], _), do: []
  def rem_dup([ same | rest ], same), do: rem_dup(rest, same)
  def rem_dup([ next | t ], _last), do: [ next | rem_dup(t, next) ]
end
