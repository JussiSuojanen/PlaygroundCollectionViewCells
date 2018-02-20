//
//  Album.swift
//  PlaygroundCollectionViewCells
//
//  Created by Jussi Suojanen on 18/02/2018.
//  Copyright © 2018 SwiftyJimmy. All rights reserved.
//

import Foundation

public enum AlbumType {
    case cd
    case lp
}

public struct Album {
    let artist: String
    let title: String
    let information: String
    let imageUrlString: String
    let albumType: AlbumType
}

// MARK: - extension Album.
// Helper function to create data for this example.
// Normally you could create this kind of extension for testing target and for TestingCellsFramework
public extension Album {
    public static func with(artist: String = "First",
                     title: String = "Best of the year",
                     information: String = "Asdfasdf",
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
