import Amadeus

var amadeus: Amadeus = Amadeus(
    client_id: "YOUR_API_ID",
    client_secret: "YOUR_API_SECRET"
)

// Flight Most Traveles Destinations
amadeus.travel.analytics.airTraffic.traveled.get(params: ["originCityCode": "MAD",
                                                          "period": "2017-01"],
                                                 onCompletion: {
                                                     response, error in
                                                     if error == nil {
                                                         print(response!.data)
                                                     }
                                        })
