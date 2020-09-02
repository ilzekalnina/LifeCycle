//
//  FirstVC.swift
//  LifeCycle
//
//  Created by Kisacka on 31/08/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    //load view is used for example when there is web view
    override func loadView() {
        super.loadView() // keyword "super" is used to access parents class member
        printMessage()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        printMessage()

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecondVC" {
            // Get the new view controller using segue.destination.
            let destinationVC = segue.destination as! SecondVC
            
            // Pass the selected object to the new view controller.
            destinationVC.someProperty = "This is a property"
        }
        
        
    }
}

extension UIViewController {
    func printMessage(line: Int = #line, function: String = #function) {
        print("\(title ?? "title is nil"): \(function) on the line \(line)")
    }
}
