//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Felipe Augusto Correia on 20/08/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var southParkArray = [SouthPark]()
    var chosenCharacter: SouthPark?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //SouthPark objects
        let eric = SouthPark(nameInit: "Eric Cartman", jobInit: "Student", imageInit: UIImage(named: "Eric_Cartman")!)
        
        let kayle = SouthPark(nameInit: "Kayle Broflovski", jobInit: "Student", imageInit: UIImage(named: "Kyle-broflovski")!)
        
        let kenny = SouthPark(nameInit: "Kenny McCormick", jobInit: "Student", imageInit: UIImage(named: "Kenny-mcCormick")!)
        
        let stan = SouthPark(nameInit: "Stan Marsh", jobInit: "Student", imageInit: UIImage(named: "Stan_marsh")!)
        
        southParkArray.append(eric)
        southParkArray.append(kayle)
        southParkArray.append(kenny)
        southParkArray.append(stan)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return southParkArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = southParkArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCharacter = southParkArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCharacter = chosenCharacter
        }
    }
    
}

