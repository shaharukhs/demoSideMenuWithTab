//
//  sub2_1VC.swift
//  tabBarSideMenu
//
//  Created by Ascra on 22/06/17.
//  Copyright © 2017 Ascracom.ascratech. All rights reserved.
//

import UIKit

class sub2_1VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
	@IBAction func nextButtonClick(_ sender: Any) {
		let vc = self.storyboard?.instantiateViewController(withIdentifier: "sub2") as! sub2_2VC
		self.hidesBottomBarWhenPushed = false
		self.navigationController?.pushViewController(vc, animated: true)
	}

}
