//
//  FirstViewController.swift
//  tabBarSideMenu
//
//  Created by Ascra on 22/06/17.
//  Copyright © 2017 Ascracom.ascratech. All rights reserved.
//

import UIKit
import InteractiveSideMenu

class FirstViewController:UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	/*
	Show menu on click if connected tab bar controller adopts proper protocol.
	*/
	@IBAction func openMenu(_ sender: UIButton) {
		
		if let menuItemViewController = self.tabBarController as? SideMenuItemContent {
			menuItemViewController.showSideMenu()
		}
		
//		if let navigationViewController = self.navigationController as? SideMenuItemContent {
//			navigationViewController.showSideMenu()
//		}
	}

}

