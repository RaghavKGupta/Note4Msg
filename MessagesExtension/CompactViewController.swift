//
//  CompactViewController.swift
//  Note4Msg
//
//  Created by Raghav Gupta on 5/28/17.
//  Copyright © 2017 Raghav Gupta. All rights reserved.
//

import UIKit
protocol CompactDelegate {
    func newNote()
}

class CompactViewController: UIViewController {
    var delegate:CompactDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func createNewNote(_ sender: Any) {
        delegate?.newNote()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
