require "http"

breweries = HTTP.get("https://api.openbrewerydb.org/breweries?by_state=new_hampshire")

#brewery = gets.chomp

brewery = breweries.parse

p brewery[18]["name"]
