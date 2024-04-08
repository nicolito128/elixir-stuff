# if [ expresión de discriminación ]
edad = 16
if edad >= 18 do
  IO.puts "Mayor de edad."
else
  wait = 18 - edad;
  IO.puts "Menor de edad. Vuelve dentro de #{wait} años."
end

edad2 = 20
IO.puts(if edad2 >= 18 do
  "Mayor de edad."
else
  "Menor de edad."
end)
