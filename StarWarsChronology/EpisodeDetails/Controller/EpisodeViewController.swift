//
//  EpisodeDetailsViewController.swift
//  StarWarsChronology
//
//  Created by Matheus Cunha on 24/05/20.
//  Copyright © 2020 Matheus Cunha. All rights reserved.
//

import UIKit

class EpisodeViewController: UIViewController {

    var episode: Episode?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let episode = episode {
            print(episode.title)
        }
    }
}
