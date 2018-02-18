//
//  AlbumCellViewModel.swift
//  PlaygroundCollectionViewCells
//
//  Created by Jussi Suojanen on 18/02/2018.
//  Copyright © 2018 SwiftyJimmy. All rights reserved.
//

import Foundation

enum AlbumSize {
    case big
    case small
}

protocol AlbumCellViewModel {
    var artistText: String { get }
    var titleText: String { get }
    var informationText: String { get }
    var imageUrl: URL? { get }
    var cellSize: AlbumSize { get }
}

extension Album: AlbumCellViewModel {
    var artistText: String {
        return artist
    }
    var titleText: String {
        return title
    }
    var informationText: String {
        return information
    }
    var imageUrl: URL? {
        return URL(string: imageUrlString)
    }
    var cellSize: AlbumSize {
        return (albumType == .cd) ? .small : .big
    }
}
