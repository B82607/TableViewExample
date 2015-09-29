//
//  ViewController.swift
//  TableViewExample
//
//  Created by Andy Pereira on 9/29/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myTableView = MyTableView(frame: CGRectMake(0, 22, self.view.frame.size.width, self.view.frame.size.height), style: .Plain)
        self.view.addSubview(myTableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

