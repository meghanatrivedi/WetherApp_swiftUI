//
//  OpenWeatherMapData.swift
//  WetherApp
//
//  Created by Meggi on 25/04/25.
//

import Foundation

struct OpenWeatherMapContainer: Codable {
    var list: [OpenMapWeatherData]?
}

struct OpenMapWeatherData: Codable {
    var weather: [OpenMapWeatherWeather]
    var main: OpenMapWeatherMain
}

struct OpenMapWeatherWeather: Codable {
    var id: Int?
    var main: String?
    var description: String?
    var icon: String?
}

struct OpenMapWeatherMain: Codable {
    var temp: Float?
}

