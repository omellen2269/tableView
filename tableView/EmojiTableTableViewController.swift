//
//  EmojiTableTableViewController.swift
//  tableView
//
//  Created by Olivia Mellen on 2/19/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class EmojiTableTableViewController: UITableViewController {

    
    var emojis: [Emoji] = [
    Emoji(symbol: "😀", name: "Smiley Face", description: "A normal smilimg face", usage: "happiness"),
    Emoji(symbol: "😂", name: "Laughing Face", description: "A face laughing so hard that it cries", usage: "laughter"),
    Emoji(symbol: "🤩", name: "Star Eyes", description: "A face that is 'wowed'", usage: "Amazed"),
    Emoji(symbol: "🐢", name: "Turtle", description: "Literally just a tutle, what do you think it is?", usage: "When your talking about turtles I guess")
    
    ]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
           return emojis.count
        } else {
            return 0
        }
       
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = "\(emoji.symbol) - \(emoji.name)"
        cell.detailTextLabel?.text = "\(emojis[indexPath.row].description)"
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
