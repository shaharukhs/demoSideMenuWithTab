//
//  TabBarViewController.swift
//  tabBarSideMenu
//
//  Created by Ascra on 22/06/17.
//  Copyright © 2017 Ascracom.ascratech. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

	var indexNumber : intmax_t = 0
	
    override func viewDidLoad() {
        super.viewDidLoad()

//			self.tabBarController?.selectedIndex = 0
//			NotificationCenter.default.addObserver(self,
//			                                       selector: #selector(selectedTabBarIndex),
//			                                       name: NSNotification.Name(rawValue: "menuClick"),
//			                                       object: self)
			
			
			
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
/*
	func selectedTabBarIndex(notification: NSNotification){
		print(notification.object as Any)
		//do stuff
		self.tabBarController?.selectedIndex = 0
	}
	
	deinit {
		NotificationCenter.default.removeObserver(self, name: Notification.Name("menuClick"), object: nil)
	}
*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
