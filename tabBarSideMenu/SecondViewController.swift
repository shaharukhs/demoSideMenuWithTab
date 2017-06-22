//
//  SecondViewController.swift
//  tabBarSideMenu
//
//  Created by Ascra on 22/06/17.
//  Copyright © 2017 Ascracom.ascratech. All rights reserved.
//

import UIKit
import InteractiveSideMenu

class SecondViewController: UIViewController, SideMenuItemContent{

	override func viewDidLoad() {
		super.viewDidLoad()
		self.tabBarController?.tabBar.isHidden = false
		// Do any additional setup after loading the view, typically from a nib.
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
	
	
	@IBAction func subView1Called(_ sender: Any) {

		let vc = self.storyboard?.instantiateViewController(withIdentifier: "subView1") as! SubView1VC
		self.navigationController?.pushViewController(vc, animated: true)
	}

	@IBAction func subView2Called(_ sender: Any) {
		let vc = self.storyboard?.instantiateViewController(withIdentifier: "subView2") as! SubView2VC
		self.navigationController?.pushViewController(vc, animated: true)
	}

}

