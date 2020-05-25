//
//  EpisodeTableViewCell.swift
//  StarWarsChronology
//
//  Created by Matheus Cunha on 24/05/20.
//  Copyright © 2020 Matheus Cunha. All rights reserved.
//

import UIKit

class EpisodeTableViewCell: UITableViewCell {

    @IBOutlet weak var labelYear: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelResume: UILabel!
    
    func configure(with episode: Episode) {
        labelTitle.text = episode.title
        labelResume.text = episode.resume
        labelYear.text = String(episode.year)
    }
}
