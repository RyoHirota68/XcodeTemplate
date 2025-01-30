//___FILEHEADER___

import Foundation

// Presenter -> service
protocol ___VARIABLE_NAME___ServiceInput {
    // PresenterからServiceの呼び出す関数
    func fetch() async throws -> [String]
}

class ___VARIABLE_NAME___Service: ___VARIABLE_NAME___ServiceInput {
    // リポジトリの初期化はDI
    let repository: <#Repository#>
    
    init(repository: <#Repository()#> = <#RepositoryImpl()#>) {
        self.repository = repository
    }
     
    
    func fetch() async throws -> [String] {
        do {
            // try await repository.fetch()
            return ["1", "2", "3"]
        } catch {
            throw error
        }
    }
}
 
