//
//  sideMenuVC.swift
//  tabBarSideMenu
//
//  Created by Ascra on 22/06/17.
//  Copyright © 2017 Ascracom.ascratech. All rights reserved.
//

import UIKit
import InteractiveSideMenu


class sideMenuVC: MenuViewController {

	let kCellReuseIdentifier = "MenuCell"
	let menuItems = ["FirstVC", "SecondVC"]
	let tabMenu = TabBarViewController()
	
	@IBOutlet weak var tableView: UITableView!
	
	override var prefersStatusBarHidden: Bool {
		return false
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Select the initial row
		tableView.selectRow(at: IndexPath(row: 0, section: 0), animated: false, scrollPosition: UITableViewScrollPosition.none)
		tableView.delegate = self;
		tableView.dataSource = self;
	}
}

/*
Extention of `sideMenuVC` class, implements table view delegates methods.
*/
extension sideMenuVC: UITableViewDelegate, UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return menuItems.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: kCellReuseIdentifier, for: indexPath)
		cell.textLabel?.text = menuItems[indexPath.row]
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
		guard let menuContainerViewController = self.menuContainerViewController else {
			return
		}
		
//		if (indexPath.row == 0) {
////			tabBarController?.selectedIndex = 0
//			self.tabMenu.tabBarController?.selectedIndex = 0
//			menuContainerViewController.hideSideMenu()
//		} else {
////			tabBarController?.selectedIndex = 1
//			self.tabMenu.tabBarController?.selectedIndex = 1
//			menuContainerViewController.hideSideMenu()
//		}
		
		menuContainerViewController.selectContentViewController(menuContainerViewController.contentViewControllers[indexPath.row])
		menuContainerViewController.hideSideMenu()
		
	}
}
