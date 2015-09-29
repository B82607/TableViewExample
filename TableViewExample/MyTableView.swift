//
//  MyTableView.swift
//  TableViewExample
//
//  Created by Andy Pereira on 9/29/15.
//

import UIKit

class MyTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    override init(frame: CGRect, style:UITableViewStyle) {
        super.init(frame: frame, style: style)
        setupTableView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTableView() {
        self.delegate = self
        self.dataSource = self
        self.bounces = false
        self.separatorStyle = .None
        self.backgroundColor = UIColor.orangeColor()
        self.addSubview(UIView())
        let cellNib = UINib(nibName: "MyTableViewCell", bundle: nil)
        self.registerNib(cellNib, forCellReuseIdentifier: "MyTableViewCell")
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyTableViewCell", forIndexPath: indexPath) as! MyTableViewCell
        cell.myLabel.text = "testing"
        return cell
    }

}
