require "http"

# p "What is your preferred temperature units, Celsius or Fahrenheit? Type F for Fahrenheit, C for Celsius."

# units = gets.chomp 



# fahrenheit = "F"
# celcius = "C"

#   if units == "metric"

while true
  p "Enter a city name. To exit type quit."

  city = gets.chomp

  if city == "quit"
    break
  end

  units = "imperial"


  weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{ENV["OPEN_WEATHER_API_KEY"]}&units=#{units}")

  #user input of city name
  city_name = weather.parse["name"]

  #temperature
  temperature = weather.parse["main"]["temp"]
  temp_min = weather.parse["main"]["temp_min"]
  temp_max = weather.parse["main"]["temp_max"]

  #description of weather
  description = weather.parse["weather"][0]["description"]
  wind_speed = weather.parse["wind"]["speed"]

  #changes based on user input
  p "It is currently #{temperature}°F and #{description} in #{city_name}. The low for today is #{temp_min}°F and the high is #{temp_max}°F, with a wind speed of #{wind_speed}mph."
end
