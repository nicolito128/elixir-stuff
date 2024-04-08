defmodule Company.Writer do
  alias Company.Employee, as: Employee

  # Las funciones publicas de Jason ahora están disponibles sin invocar el modulo
  import Jason, only: [encode: 1]

  defp to_map(%Employee{name: n, salary: s, position: p}) do
    %{"name" => n, "salary" => s, "position" => p}
  end

  defp to_map(_x) do
    nil
  end

  defp to_json(m) do
    {:ok, json_version} = encode(m)
    json_version
  end

  defp dump(str) do
    File.write("employees.json", str)
  end

  def write(employees) do
    employees
    |> Enum.map(&to_map/1)
    |> Enum.filter(fn
      nil -> false
      _ -> true
    end)
    |> to_json
    |> dump
  end
end
