//
//  DetailViewController.swift
//  Interview-dataPassing2
//
//  Created by Jian Ma on 9/23/20.
//

import UIKit

protocol DetailViewControllerDelegate: AnyObject{
    func showText(_ text: String)
}

class DetailViewController: UIViewController {
    
    weak var showTextdelegate: DetailViewControllerDelegate!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   //     let detailViewController = UIViewController.self as! DetailViewController
        
      

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedSubmitButton(_ sender: UIButton) {
        if let textString = textField.text {
            print(textString)
            print(showTextdelegate)
            showTextdelegate.showText(textString)
        }
      dismiss(animated: true, completion: nil)
    }

}
