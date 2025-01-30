//___FILEHEADER___

import Foundation

// Presenter -> View
protocol ___VARIABLE_NAME___ViewOutput: AnyObject {
    // PresenterからViewの呼び出す関数
    func showApiError(error: Error)
    func updateData(data: [String])
}

// View -> Presenter
protocol ___VARIABLE_NAME___ViewInput {
    // ViewからPresenterの呼び出す関数
     func fetch()
}

final class ___VARIABLE_NAME___Presenter {
    
    weak var view: ___VARIABLE_NAME___ViewOutput?
    private let service: ___VARIABLE_NAME___ServiceInput
    
    init(view: ___VARIABLE_NAME___ViewOutput, service: ___VARIABLE_NAME___ServiceInput) {
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


