//
//  RequestBuilder.swift
//  blogme
//
//  Created by Carlos Pujol on 6/15/22.
//

import Foundation

protocol RequestBuilder {
    var urlRequest: URLRequest {get}
}
