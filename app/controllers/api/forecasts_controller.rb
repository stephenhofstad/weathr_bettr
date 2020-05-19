class Api::ForecastsController < ApplicationController
  def index
    response = HTTP.get("https://api.aerisapi.com/forecasts/chicago,il?&format=json&filter=day&limit=7&fields=periods.dateTimeISO,periods.maxTempF&client_id=SGNVZqpuIKXwQNbBPaLll&client_secret=PW5jviLvyu5N1EtKmxNDUqoWfXABKrZE3zRLSJkl")
    temperatures = response.parse
    @tempies = temperatures["response"][0]["periods"]
    day = temperatures["response"][0]["periods"][0]["dateTimeISO"]
    render json: @tempies
  end
end
