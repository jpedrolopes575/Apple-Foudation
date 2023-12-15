//
//  Comic.swift
//  MarvelApi
//
//  Created by user on 17/10/23.
//

/*
 {
    "data": {
        "count": 5,
        "results": [
            {...},
            {...},
            {...},
            {...},
            {...}
        ]
    }
 }
 */

struct APIComicResult: Codable {
    var data: APIComicData
}

struct APIComicData: Codable {
    var count: Int
    var results: [Comic]
}

struct Comic: Identifiable,Codable {
    var id: Int
    var title: String
    var description: String?
    var thumbnail: [String:String]
    var urls:[[String:String]]
}
