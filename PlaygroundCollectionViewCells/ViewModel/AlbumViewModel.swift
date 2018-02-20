//
//  AlbumViewModel.swift
//  PlaygroundCollectionViewCells
//
//  Created by Jussi Suojanen on 18/02/2018.
//  Copyright © 2018 SwiftyJimmy. All rights reserved.
//

import Foundation

public struct AlbumViewModel {
    let cells = Bindable([AlbumCellViewModel]())
    let appServerClient: AppServerClientProtocol

    public init(appServerClient: AppServerClientProtocol) {
        self.appServerClient = appServerClient
    }

    public func getAlbums() {
        appServerClient.getAlbums {
            switch $0 {
            case .success(let albums):
                self.cells.value = albums.flatMap { $0 as AlbumCellViewModel }
            case .failure:
                // no operation in this example project
                break
            }
        }
    }
}
