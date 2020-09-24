//
//  ViewController.swift
//  Interview-dataPassing2
//
//  Created by Jian Ma on 9/23/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //added something
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
}


extension ViewController: DetailViewControllerDelegate{
    func showText(_ text: String) {
        textView.text = text
    }
}
