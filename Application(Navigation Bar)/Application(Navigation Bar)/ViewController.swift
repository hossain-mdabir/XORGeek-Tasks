//
//  ViewController.swift
//  Application(Navigation Bar)
//
//  Created by XORGeek New on 2022/03/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func userInterfaceSwitch(switchbutton: UISwitch) -> Void {
        
        let viewHeight:CGFloat = switchbutton.isOn ? 100 : 0.0
        self.userInterfaceView?.visiblity(gone: !switchbutton.isOn, dimension: viewHeight)
    }
    @IBAction func userInterfaceView(_ sender: UIButton) {
        
//        if userInterfaceView.tag == 0 {
//            userInterfaceView.tag = 1
//            userInterfaceView.isHidden = true
//        }
    }
    @IBOutlet weak var userInterfaceView: UIView!
    
    @IBOutlet weak var userInterfaceScrollView: UIScrollView!
    
}
extension UIView {

    func visiblity(gone: Bool, dimension: CGFloat = 0.0, attribute: NSLayoutConstraint.Attribute = .height) -> Void {
        if let constraint = (self.constraints.filter{$0.firstAttribute == attribute}.first) {
            constraint.constant = gone ? 0.0 : dimension
            self.layoutIfNeeded()
            self.isHidden = gone
        }
    }
}
