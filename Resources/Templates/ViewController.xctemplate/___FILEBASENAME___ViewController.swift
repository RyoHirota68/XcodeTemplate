//___FILEHEADER___

import UIKit
import SVProgressHUD

final class ___FILEBASENAME___ViewController: UIViewController {
    
    private let presenter: ___FILEBASENAME___Presenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = ___FILEBASENAME___Presenter(view: self, service: ___FILEBASENAME___Service())
        
        setupView()
        setupLayout()
        actionBind()
    }
}

// MARK: - Setup
private extension ___FILEBASENAME___ViewController {
    
    /// viewの初期設定
    func setupView() {
        
    }
    
    /// AutoLayoutやレイアウトの初期設定
    func setupLayout() {
        
    }
    
    /// ボタンイベントなどの設定
    func actionBind() {
        
    }
}

// MARK: - Output
extension TemplateViewController: ___FILEBASENAME___ViewOutput {
    /// エラー表示を行う
    /// ErrorがAPIError型の場合はエラーメッセージを表示する
    /// - Parameter error: Error
    func showApiError(error: Error) {
        hideProgress()
        if let error = error as? APIError {
            if error.statusCode == AppErrorCode.offline.rawValue {
                showErrorDialog(message: error.message)
                return
            } else {
                showErrorDialog(message: String(localized: <#ローカライズされたエラーメッセージ#>))
                return
            }
        }
        // 想定外のエラー
        showErrorDialog(message: error.localizedDescription)
    }
    
    func updateData(data: [String]) {
        // dataを更新
    }
}

// MARK: - Private
private extension ___FILEBASENAME___ViewController {
    
    func buttonAction() {
        showProgress()
        presenter.fetch()
    }
    
}
