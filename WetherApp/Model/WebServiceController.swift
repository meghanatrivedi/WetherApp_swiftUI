//
//  WebServiceController.swift
//  WetherApp
//
//  Created by Meggi on 25/04/25.
//

import Foundation

public protocol WebServiceController {
    init(fallbackService: WebServiceController?)
    
    var fallbackService: WebServiceController? { get }
    
    func fetchWeatherData(for city: String,
                          completionHandler: @escaping(String?, WebServiceControllerError?) -> Void)
}

// MARK: - WebServiceControllerError
public enum WebServiceControllerError: Error {
    case invalidURL(String)
    case invalidPayload(URL)
    case forwarded(Error)
}
