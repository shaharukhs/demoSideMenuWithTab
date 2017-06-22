//
//  HomeViewController.swift
//  tabBarSideMenu
//
//  Created by Ascra on 22/06/17.
//  Copyright © 2017 Ascracom.ascratech. All rights reserved.
//

import UIKit
import InteractiveSideMenu

class HomeViewController: MenuContainerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
			let screenSize: CGRect = UIScreen.main.bounds
			self.transitionOptions = TransitionOptions(duration: 0.4, visibleContentWidth: screenSize.width / 6)
			
			// Instantiate menu view controller by identifier
			self.menuViewController = self.storyboard!.instantiateViewController(withIdentifier: "NavigationMenu") as! MenuViewController
			
			// Gather content items controllers
			self.contentViewControllers = contentControllers()
			
			// Select initial content controller. It's needed even if the first view controller should be selected.
//			self.selectContentViewController(contentViewControllers.first!)
			
			let viewController = self.storyboard?.instantiateViewController(withIdentifier: "TabBar")
			
			self.selectContentViewController(viewController!)
			
			// Do any additional setup after loading the view, typically from a nib.
	}
	
			override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
				super.viewWillTransition(to: size, with: coordinator)
				
				/*
				Options to customize menu transition animation.
				*/
				var options = TransitionOptions()
				
				// Animation duration
				options.duration = size.width < size.height ? 0.4 : 0.6
				
				// Part of item content remaining visible on right when menu is shown
				options.visibleContentWidth = size.width / 6
				self.transitionOptions = options
	}
	
	
	
			private func contentControllers() -> [UIViewController] {
				let controllersIdentifiers = ["first","second"]
				var contentList = [UIViewController]()
				
				/*
				Instantiate items controllers from storyboard.
				*/
				for identifier in controllersIdentifiers {
					if let viewController = self.storyboard?.instantiateViewController(withIdentifier: identifier) {
						contentList.append(viewController)
					}
				}
				
				return contentList
	}

}
