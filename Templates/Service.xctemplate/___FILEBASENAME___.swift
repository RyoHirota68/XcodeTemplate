//___FILEHEADER___

import Foundation

// Presenter -> View
protocol ___FILEBASENAME___ViewOutput: AnyObject {
    // PresenterからViewの呼び出す関数
    func showApiError(error: Error)
    func updateData(data: [String])
}

// View -> Presenter
protocol ___FILEBASENAME___ViewInput {
    // ViewからPresenterの呼び出す関数
    // func fetch()
}

final class ___FILEBASENAME___Presenter {
    
    weak var view: ___FILEBASENAME___ViewOutput?
    private let service: ___FILEBASENAME___ServiceInput
    
    init(view: ___FILEBASENAME___ViewOutput, service: ___FILEBASENAME___ServiceInput) {
        self.view = view
        self.service = service
    }
    
    // 非同期処理
    func fetch() {
        Task {
            do {
                let array = try await service.fetch()
                view?.updateData(data: array)
                
                /* updateDataにUI更新が含まれる
                 await MainActor.run {
                 view?.updateData(data: array)
                 }
                 */
            } catch {
                // エラー処理
                view?.showApiError(error: error)
            }
        }
    }
}


