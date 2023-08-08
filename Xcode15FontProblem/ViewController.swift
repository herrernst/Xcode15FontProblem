//
//  ViewController.swift
//  Xcode15FontProblem
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var regularLabel: UILabel!
    @IBOutlet weak var italicLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(regularLabel!.font)
        print(italicLabel!.font)

        return;
        
        // asserts are valid in xcode 14, but not 15
        assert(regularLabel.font.fontName == "Roboto-Regular")
        assert(italicLabel.font.fontName == "Roboto-Italic")
        assert(italicLabel.font.familyName == "Roboto")
        assert(regularLabel.font.familyName == "Roboto")
    }
    

}
