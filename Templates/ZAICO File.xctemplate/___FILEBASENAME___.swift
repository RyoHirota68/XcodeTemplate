//___FILEHEADER___

import UIKit
import SVProgressHUD

final class ___FILEBASENAME___ViewController: UIViewController {
    
    private let presenter: ___FILEBASENAME___Presenter
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter = ___FILEBASENAME___Presenter(view: self,
                                      service: ___FILEBASENAME___Service())
    }
}

// MARK: - Output
extension TemplateViewController: ___FILEBASENAME___ViewOutput {
    
}

// MARK: Private
private extension ___FILEBASENAME___ViewController {
    
}
