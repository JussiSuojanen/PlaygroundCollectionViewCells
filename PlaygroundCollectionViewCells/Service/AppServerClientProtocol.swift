//
//  AppServerClientProtocol.swift
//  PlaygroundCollectionViewCells
//
//  Created by Jussi Suojanen on 18/02/2018.
//  Copyright © 2018 SwiftyJimmy. All rights reserved.
//

import Foundation

public enum Result<T> {
    case success(T)
    case failure(Error)
}

public protocol AppServerClientProtocol {
    func getAlbums(_ completion: @escaping (Result<[Album]>) -> Void)
}
