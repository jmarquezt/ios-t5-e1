//
//  ViewController.swift
//  T5E1
//
//  Created by Jorge Marquez Torres on 27/1/16.
//  Copyright © 2016 jmarquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    var popover : UIPopoverController? = nil
    @IBOutlet weak var buttonHelp: UIButton!
    @IBAction func buttonHelpAction(sender: AnyObject) {
        let contenidoPopover : UIViewController = UIViewController()
        contenidoPopover.view.backgroundColor = UIColor.redColor()
        contenidoPopover.modalPresentationStyle =
            UIModalPresentationStyle.Popover
        let popover = contenidoPopover.popoverPresentationController
            as UIPopoverPresentationController?
        contenidoPopover.preferredContentSize = CGSizeMake(300, 300)
        popover?.delegate = self
        popover?.sourceView = sender as! UIButton
        popover?.permittedArrowDirections = UIPopoverArrowDirection.Up
        popover?.sourceRect = CGRectMake(10, 20, 0, 0)
        self.presentViewController(contenidoPopover, animated: true,
            completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

