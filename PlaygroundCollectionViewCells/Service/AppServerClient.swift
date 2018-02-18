//
//  AppServerClient.swift
//  PlaygroundCollectionViewCells
//
//  Created by Jussi Suojanen on 18/02/2018.
//  Copyright © 2018 SwiftyJimmy. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T)
    case failure(Error)
}

protocol AppServerClientProtocol {
    func getAlbums(_ completion: @escaping (Result<[Album]>) -> Void)
}

/// AppServerClient is a stub for networking
struct AppServerClient: AppServerClientProtocol {
    func getAlbums(_ completion: @escaping (Result<[Album]>) -> Void) {

        // Returns static data for the sake to show something on the screen
        let albums: [Album] = [
            .with(information: "this is the album"),
            .with(albumType: .lp),
            .with()
        ]

        completion(.success(albums))
    }
}
