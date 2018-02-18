//
//  AlbumViewModel.swift
//  PlaygroundCollectionViewCells
//
//  Created by Jussi Suojanen on 18/02/2018.
//  Copyright © 2018 SwiftyJimmy. All rights reserved.
//

import Foundation

struct AlbumViewModel {
    let cells = Bindable([AlbumCellViewModel]())

    init(cells: [Album]) {
        self.cells.value = cells.map { $0 as AlbumCellViewModel }
    }
}
