//
//  ExpandedViewController.swift
//  Note4Msg
//
//  Created by Raghav Gupta on 5/28/17.
//  Copyright © 2017 Raghav Gupta. All rights reserved.
//

import UIKit

protocol ExpandedDelegate {
    func sendMsg(title:String, note:String)
    func saveMsg(title:String, note:String)
}

class ExpandedViewController: UIViewController {

    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtNote: UITextView!
    
    var delegate:ExpandedDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clearText(){
        txtNote.text = "note"
        txtTitle.text = ""
    }
    
    @IBAction func sendMsg(_ sender: Any) {
        delegate?.sendMsg(title: txtTitle.text!, note: txtNote.text)
    }
    
    @IBAction func saveMsg(_ sender: Any) {
        delegate?.saveMsg(title: txtTitle.text!, note: txtNote.text)
    }
    
    func didOpen(from url:URL){
        let components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
        for item in components.queryItems!{
            if item.name == "title"{
                txtTitle.text = item.value
            }
            else if item.name == "note"{
                txtNote.text = item.value
            }
        }
        
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
