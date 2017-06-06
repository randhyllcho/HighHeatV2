//
//  ViewController.swift
//  HighHeatv.2
//
//  Created by RYAN CHRISTENSEN on 10/25/16.
//  Copyright © 2016 ChogerDome Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var recordButton: UIButton!
  
  let tempPitchers = ["RC", "Franklin", "Crush", "Scott", "Hoog"]
  let tempPitStats = ["Aces #0", "Aces #31", "Select #3", "Ravens # 6", "Select #16"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.delegate = self
    self.tableView.dataSource = self
    setUpRecordButton()
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.tempPitchers.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
    cell.textLabel?.text = self.tempPitchers[indexPath.row]
    cell.detailTextLabel?.text = self.tempPitStats[indexPath.row]
//    cell.imageView?.image = UIImage(named: "VSS_kidpitching.jpg")
    return cell
  }

  @IBAction func recordButtonPressed(_ sender: AnyObject) {
  }
  

  func setUpRecordButton() {
    self.recordButton.layer.cornerRadius = self.recordButton.frame.width / 2
    self.recordButton.clipsToBounds = true
    self.recordButton.layoutIfNeeded()
  }

}

