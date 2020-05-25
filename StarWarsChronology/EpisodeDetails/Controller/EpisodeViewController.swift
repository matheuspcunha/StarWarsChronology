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

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var summaryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let episode = episode {
            movieImageView.image = UIImage(named: episode.image)
            posterImageView.image = UIImage(named: episode.poster)
            logoImageView.image = UIImage(named: episode.logo)
            summaryTextView.text = episode.summary
        }
    }
}
