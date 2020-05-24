//
//  Episode.swift
//  StarWarsChronology
//
//  Created by Matheus Cunha on 24/05/20.
//  Copyright © 2020 Matheus Cunha. All rights reserved.
//

import Foundation

struct Episode: Decodable {
    
    let title: String
    let year: String
    var resume: String?
    let image: String
    
    var smallImage: String {
        return image + "small"
    }
}
