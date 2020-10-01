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
        
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        let detailViewController = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        detailViewController.showTextdelegate = self
        performSegue(withIdentifier: "segue", sender: self)
        
    }
    
}


extension ViewController: DetailViewControllerDelegate{
    func showText(_ text: String) {
        textView.text = text
    }
}
