//
//  LearnTableViewController.swift
//  Calculator
//
//  Created by Rohit Sharma on 25/11/22.
//

import UIKit

class LearnTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var books : [BookResponse] = [BookResponse(name: "xyz", writer: "Rohit", price: 100.00) , BookResponse(name: "abc", writer: "Anmol", price: 200.04)]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension LearnTableViewController : UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BooksData", for: indexPath)
        cell.textLabel?.text = books[indexPath.row].name
        return cell
    }
    
    
}

extension LearnTableViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
