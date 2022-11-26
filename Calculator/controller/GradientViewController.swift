//
//  GradientViewController.swift
//  Calculator
//
//  Created by Rohit Sharma on 02/11/22.
//

import UIKit

class GradientViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var backImage: UIImageView!
    
    var viewIconTap = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
               let initialColor = UIColor.blue // our initial color
               let finalColor = UIColor.purple // our final color
               
               let gradientLayer = CAGradientLayer()
               gradientLayer.type = .axial
               gradientLayer.colors = [initialColor.withAlphaComponent(0.8).cgColor, finalColor.withAlphaComponent(0.8).cgColor]
               gradientLayer.locations = [0, 1]
               gradientLayer.frame = backImage.bounds
               backImage.layer.addSublayer(gradientLayer)
        
       // username.borderStyle = .init(rawValue: 3) ?? 4
        username.attributedPlaceholder = NSAttributedString(
            string: "Username",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        username.layer.cornerRadius = 25.0
        username.layer.borderColor = UIColor.white.cgColor
        username.layer.borderWidth = 1.0
        
        password.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        password.layer.borderColor = UIColor.white.cgColor
        password.layer.borderWidth = 1.0
      //  postRequest()
        
        
        
        // to add action on image or icon
        let viewPassword = UIImageView()
        viewPassword.image = UIImage(named: "view-password")
        
        let contentView = UIView()
        contentView.addSubview(viewPassword)
        
        contentView.frame = CGRect(x: 0, y: 0, width: (UIImage(named: "view-password")?.size.width)!, height: (UIImage(named: "view-password")?.size.height)!)
        
        viewPassword.frame = CGRect(x: -10, y: 0, width: (UIImage(named: "view-password")?.size.width)!, height: (UIImage(named: "view-password")?.size.height)!)
        
        password.rightView = contentView
        password.rightViewMode = .always
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        //add user interaction enabled image view and tap too
        viewPassword.isUserInteractionEnabled = true
        viewPassword.addGestureRecognizer(tapGestureRecognizer)
        
       
    }
    
    @IBAction func tableView(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "LearnTableView", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "LearnTableViewController") as UIViewController // Explicit cast is required here.
        viewController.modalTransitionStyle = .coverVertical
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    @objc func imageTapped(tapGestureRecognizer:UITapGestureRecognizer){
        
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        if !viewIconTap {
            viewIconTap = true
            tappedImage.image = UIImage(named: "icons8-eye-24")
            password.isSecureTextEntry = false
        }
        else{
            viewIconTap = false
            tappedImage.image = UIImage(named: "view-password")
            password.isSecureTextEntry = true
        }
        
        
    }
    

    func postRequest() {
      
      // declare the parameter as a dictionary that contains string as key and value combination. considering inputs are valid
      
      let parameters: [String: Any] = ["username": "rohit", "password" : "123" ]
      
      // create the url with URL
      let url = URL(string: "https://api.dev.korporate.hexaview.in/users/login")! // change server url accordingly
      
      // create the session object
      let session = URLSession.shared
      
      // now create the URLRequest object using the url object
      var request = URLRequest(url: url)
      request.httpMethod = "POST" //set http method as POST
      
      // add headers for the request
      request.addValue("application/json", forHTTPHeaderField: "Content-Type") // change as per server requirements
      request.addValue("application/json", forHTTPHeaderField: "Accept")
      
      do {
        // convert parameters to Data and assign dictionary to httpBody of request
        request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
      } catch let error {
        print(error.localizedDescription)
        return
      }
      
      // create dataTask using the session object to send data to the server
      let task = session.dataTask(with: request) { data, response, error in
        
        if let error = error {
          print("Post Request Error: \(error.localizedDescription)")
          return
        }
        
        // ensure there is valid response code returned from this HTTP response
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode)
        else {
          print("Invalid Response received from the server")
          return
        }
        
        // ensure there is data returned
        guard let responseData = data else {
          print("nil Data received from the server")
          return
        }
        
        do {
          // create json object from data or use JSONDecoder to convert to Model stuct
          if let jsonResponse = try JSONSerialization.jsonObject(with: responseData, options: .mutableContainers) as? [String: Any] {
            print(jsonResponse)
            // handle json response
          } else {
            print("data maybe corrupted or in wrong format")
            throw URLError(.badServerResponse)
          }
        } catch let error {
          print(error.localizedDescription)
        }
      }
      // perform the task
      task.resume()
    }

    @IBAction func backtologin(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Calculator", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "CalculatorViewController") as UIViewController // Explicit cast is required here.
        viewController.modalTransitionStyle = .coverVertical
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)

    }
}
