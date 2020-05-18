class Api::TempersController < ApplicationController
  def index
    response = HTTP.get("https://data.cityofchicago.org/resource/k7hf-8y75.json")
    tempers = response.parse
    index = 0
    temps = []
    tempf = 0
    while index < 48
      empty_hash = {}
      tempf = (tempers[index]["air_temperature"].to_f * 9 / 5) + 32
      empty_hash[tempf] = tempers[index]["measurement_timestamp_label"]
      temps << empty_hash
      index += 1
    end

    render json: temps
  end
end
