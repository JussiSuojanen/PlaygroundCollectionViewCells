import Foundation
import TestingCellsFramework

public struct PlaygroundServerClient: AppServerClientProtocol {

     let albums: [Album]

    public init(albums: [Album]) {
        self.albums = albums
    }

    public func getAlbums(_ completion: @escaping (Result<[Album]>) -> Void) {
        completion(.success(albums))
    }
}
