//
//  Album.swift
//  PlaygroundCollectionViewCells
//
//  Created by Jussi Suojanen on 18/02/2018.
//  Copyright © 2018 SwiftyJimmy. All rights reserved.
//

import Foundation

enum AlbumType {
    case cd
    case lp
}

struct Album {
    let artist: String
    let title: String
    let information: String
    let imageUrlString: String
    let albumType: AlbumType
}

// MARK: - extension Album.
// Helper function to create data for this example
extension Album {
    static func with(artist: String = "First",
                     title: String = "Best of the year",
                     information: String = "Asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf Asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf",
                     imageUrlString: String = "22222",
                     albumType: AlbumType = .cd) -> Album
    {
       return Album(artist: artist,
                    title: title,
                    information: information,
                    imageUrlString: imageUrlString,
                    albumType: albumType)
    }
}
