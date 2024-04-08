age_str = IO.gets "How old are you? "
age = String.to_integer String.replace_suffix(age_str, "\n", "")

message = if age >= 18 do
  "You're an adult!"
else
  "Get out minor..."
end

IO.puts message

# if !expression
unless age == 18 do
  IO.puts "Hey, you aren't 18 years old uh"
end

temp = 18
weather_message = cond do
  temp == 0                -> "Freezing..."
  temp >= 15 && temp <= 25 -> "It's ok"
  temp >= 35               -> "Super hot!"
  true                     -> "None"
end

IO.puts weather_message
