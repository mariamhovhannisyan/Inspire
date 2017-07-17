//
//  MainScreenViewController.swift
//  Inspire
//
//  Created by Mar Hovhannisyan on 7/17/17.
//  Copyright © 2017 Mar Hovhannisyan. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupMainButtons()
        self.setupNavigationAppearance()
    }
    
    func setupNavigationAppearance() {
        let barButton = UIBarButtonItem.init(barButtonSystemItem: .action, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    func setupMainButtons() {
        let navigationHeight:CGFloat = 64
        let viewHeight = UIScreen.main.bounds.size.height - navigationHeight
        let buttonSide = (viewHeight - 2*30 - 2*40) / 3
        let goalButton = UIButton.init(frame: CGRect.init(x: self.view.center.x - buttonSide/2, y: navigationHeight + 30, width: buttonSide, height: buttonSide))
        goalButton.backgroundColor = UIColor.init(red: 176/255, green: 173/255, blue: 201/255, alpha: 1.0)
        goalButton.layer.cornerRadius = buttonSide/2
        goalButton.addTarget(self, action: #selector(createGoal), for: .touchUpInside)
        
        let quoteButton = UIButton.init(frame: CGRect.init(x: self.view.center.x - buttonSide/2, y:navigationHeight + 30 + buttonSide + 40, width: buttonSide, height: buttonSide))
        quoteButton.backgroundColor = UIColor.init(red: 176/255, green: 173/255, blue: 201/255, alpha: 1.0)
        quoteButton.layer.cornerRadius = buttonSide/2
        quoteButton.addTarget(self, action: #selector(showQuote), for: .touchUpInside)
        
        let newQuoteButton = UIButton.init(frame: CGRect.init(x:self.view.center.x - buttonSide/2, y:navigationHeight +  30 + buttonSide + 40 + buttonSide + 40, width: buttonSide, height: buttonSide))
        newQuoteButton.backgroundColor = UIColor.init(red: 176/255, green: 173/255, blue: 201/255, alpha: 1.0)
        newQuoteButton.layer.cornerRadius = buttonSide/2
        newQuoteButton.addTarget(self, action: #selector(createQuote), for: .touchUpInside)
        
        self.view.addSubview(goalButton)
        self.view.addSubview(quoteButton)
        self.view.addSubview(newQuoteButton)
        
    }
    
    @objc func createGoal() {
        
    }
    
    @objc func showQuote() {
        
    }
    
    @objc func createQuote() {
        
    }
    
}
