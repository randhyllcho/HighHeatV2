//
//  ScoreViewController.swift
//  HighHeatv.2
//
//  Created by RYAN CHRISTENSEN on 10/25/16.
//  Copyright © 2016 ChogerDome Productions. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
  let tempScores = [77,33,33,44,10,90,23,44,77,6]
  
    override func viewDidLoad() {
        super.viewDidLoad()
      self.tableView.delegate = self
      self.tableView.dataSource = self
    }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.tempScores.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "SCORECELL", for: indexPath)
    cell.textLabel?.text = "\(self.tempScores[indexPath.row])"
    cell.imageView?.image = UIImage(named: "VSS_kidpitching.jpg")
    return cell
  }

}
