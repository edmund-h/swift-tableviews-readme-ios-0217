//
//  TableViewController.swift
//  TableViewFunTime
//
//  Created by James Campagno on 6/15/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var favoriteSongs: [String] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        generateFavoriteSongs()
        
    }
    
    func generateFavoriteSongs() {

        favoriteSongs = [
            //"Thriller",
            "Billie Jean",
            "Never Gonna Give You Up",
            "Together Forever",
            "Whenever You Need Someone",
            "Safety Dance",
            //  "Space Oddity",
            "Life On Mars?",
            "Let's Dance",
            //"Smells Like Teen Spirit",
            "Drain You",
            "Frances Farmer Will Have Her Revenge on Seattle",
           // "Jealous Guy",
            "Julia",
            "Jolene",
           // "Moondance",
            "Brown Eyed Girl",
          //  "Stairway To Heaven",
            "When The Levee Breaks",
            //"One",
            "Enter Sandman",
            "Creeping Death",
            //Metal/Alt Metal
            "Falling Snow",
            "Hymne VI: Wolf And Passion",
            "Ritual",
            "Valen",
            "Swollen and Halo",
            "Nobody Like You",
            //industrial & EBM
            "Existence in Progress",
            "20 Ways To Kill Someone",
            "Scarred",
            "Assimilate",
            "Arena",
            //classic rock & pop
            "While My Guitar Gently Weeps",
            "If I Needed Someone",
            "Turn, Turn, Turn",
            "Rhiannon",
            "Toxic",
            "Radio",
            "Pictures of You",
            "Candy",
            //J-Rock
            "Emu ~For My Dear~",
            "Rosier",
            "Cage",
            //Punk (Classic & Other)
            "City of Angels",
            "Cannot",
            "A Shield for Your Eyes, a Beast in the Well of Your Hand",
            "Sick Boy",
            "The Plan",
            "My Brain Hurts",
            "Total Control",
            // Emo & Post-Hardcore
            "Soon",
            "Sometimes",
            "Greatest Romances of the 20th Century",
            "Why Did We Ever Meet",
            "A Praise Chorus",
            "Okay I Believe You but My Tommy Gun Don't",
            "Ooh Do I Love You",
            "Arcarsenal",
            //Indie & Alt-Rock
            "Cowboy Dan",
            "Map Ref 41 Degrees N 93 Degrees W",
            "Ex Lion Tamer",
            "This Must Be the Place",
            "Monkey Gone to Heaven",
            "Driver 8",
            //Shoegaze & Dream Pop
            "New You",
            "Alison",
            "Lorelei",
            "Suggar Hiccup",
            "Sandy",
            "Runners",
            //EDM/IDM/Italo Disco
            "Polynomial-C",
            "Jumbo",
            "Pearl's Girl",
            "Eyes",
            "Fears Go On",
            "Ptolemy",
            //Hip-Hop/Rap/Freestyle
            "7 Chinese Bros.",
            "Money Trees (ft Jay Rock)",
            "9 Piece (ft Lil Wayne)",
            "Brand New",
            "Hood Took Me Under",
            "Let the Music Play",
            "Power",
            "I Wonder if I Take You Home",
            "I Can't Wait",
            //Internet Subgenres
            "Legend",
            "Eccojam A3-b",
            "Virtual Luxury Beach",
            "水野 亜美AMY (コンシャスTHOUGHTS Remix)",
            
        ]
        
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        //numberOfSections is a tableView method breaking table into sections of rows
        //think the divisions in the iOS settings top level menu
        return 1
        //this table will not have any subsections so it's overriding f(x) to return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //numberOfRowsInSection is a tableView method breaking table into rows
        return favoriteSongs.count
        //sets number of rows = favoriteSongs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //this section is defining what a cell actually is, looks like,  and does (note the ⬆️return type⬆️)
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        // here we define a cell as ⬆️ a reusable cell that is reallocated as the list gets scrolled through
        let favoriteSong = favoriteSongs[(indexPath as NSIndexPath).row]
        // 0
        cell.textLabel?.text = favoriteSong
        print ("Section: \(indexPath.section) Row: \(indexPath.row)")
        return cell
    }
 

}
