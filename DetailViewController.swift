//
//  DetailViewController.swift
//  Interview-dataPassing2
//
//  Created by Jian Ma on 9/23/20.
//

import UIKit

protocol DetailViewControllerDelegate{
    func showText(_ text: String)
}

class DetailViewController: UIViewController {
    
    var showTextdelegate: DetailViewControllerDelegate!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedSubmitButton(_ sender: UIButton) {
        if let textString = textField.text {
            showTextdelegate.showText(textString)
        }
      dismiss(animated: true, completion: nil)
    }

}
