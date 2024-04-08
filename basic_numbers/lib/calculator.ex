defmodule Calculator do

  defp get_input(msg) do
    msg |> IO.gets |> String.trim |> Integer.parse(10)
  end

  defp validate_input(:error) do
    raise ArgumentError, message: "the input value is invalid"
  end

  defp validate_input({value, _}), do: value

  defp get_value(msg), do: get_input(msg) |> validate_input

  def add(n) when is_number(n) and n > 0, do: add(n, [])

  def add([]), do: 0

  def add(list) when is_list(list) do
    res = Enum.reduce(list, fn el, acc -> el + acc  end)
    IO.puts("Addition result: #{res}")

    res
  end

  def add(_), do: :undefined

  def add(0, list) when is_list(list) do
    add(list)
  end

  def add(n, list) when is_number(n) and is_list(list) do
    value = get_value("Entry a new value: ")
    add(n - 1, [value | list])
  end

end
