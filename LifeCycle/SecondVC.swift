//
//  SecondVC.swift
//  LifeCycle
//
//  Created by Kisacka on 02/09/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    var someProperty: String! {
        didSet{
            print(someProperty ?? "nothing here")
        }
    }
    
    //Fires only once after boots/load view
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if someProperty != nil {
            print(someProperty ?? "nothing here")
        }
        printMessage()
        // Do any additional setup after loading the view.
    }
    
    //Before the view appears on the screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    //Before the view size changes to fit the screen
    //subviews are everythin that is under view in navigator (buttons, labels etc)
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
    
    //After the view size has changed to fit the screen size
    override func viewDidLayoutSubviews() {
        printMessage()
    }
    
    //after the view appears on the screen
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    //Unloading, to save up memory, so app is not so heavy
    deinit {
        printMessage()
    }
    
    //Fires when you rotate the Screen
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        printMessage()
    }
    
    //before the view closes
    //if some info need to be saved before closing, there is the best place for code
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }

    //after closing the view
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
}
