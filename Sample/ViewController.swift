import UIKit
import SUSDK

class ViewController: UIViewController, SUSDKViewControllerDelegate {

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let adViewController = SUSDK.getViewController()
        adViewController.delegate = self
        self.presentViewController(adViewController, animated: true, completion: nil)
    }
    
    func saturnupAdDidSuccede() {
        // Implement action for correct answer here
    }
    
    func saturnupAdDidFail() {
        // Implent action for incorrect answer here
    }
    
    func saturnupAdDidNotComplete() {
        // Implement action for incomplete ad interaction here
    }
}

