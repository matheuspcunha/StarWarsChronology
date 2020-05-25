//
//  Episode.swift
//  StarWarsChronology
//
//  Created by Matheus Cunha on 24/05/20.
//  Copyright © 2020 Matheus Cunha. All rights reserved.
//

import Foundation

struct Episode: Decodable {
    
    let id: Int
    let title: String
    let year: Int
    var resume: String?
    let image: String
    let summary: String

    var poster: String {
        return image + "poster"
    }
    
    var logo: String {
        return image + "logo"
    }
}
