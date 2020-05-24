//
//  EpisodesListTableViewController.swift
//  StarWarsChronology
//
//  Created by Matheus Cunha on 24/05/20.
//  Copyright © 2020 Matheus Cunha. All rights reserved.
//

import UIKit

class EpisodesListTableViewController: UITableViewController {

    var episodes: [Episode] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadEpisodes()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let episodeViewController = segue.destination as? EpisodeViewController
        if let episodeIndex = tableView.indexPathForSelectedRow?.row {
            episodeViewController?.episode = episodes[episodeIndex]
        }
    }
    
    func loadEpisodes() {
        guard let jsonURL = Bundle.main.url(forResource: "episodes", withExtension: "json") else {return}
                do {
                    let jsonData = try Data(contentsOf: jsonURL)
                    let jsonDecoder = JSONDecoder()
                    episodes = try jsonDecoder.decode([Episode].self, from: jsonData)
                    
                    tableView.reloadData()
                } catch {
                    print(error)
                }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int { return 1 }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EpisodeTableViewCell
        let episode = episodes[indexPath.row]
        
        cell.configure(with: episode)

        return cell
    }
}
