//: Playground - noun: a place where people can play

import UIKit
import TestingCellsFramework
import PlaygroundSupport

// Create the albums
let albums: [Album] = [
    .with(
        artist:"First",
        title: "The best",
        information: "this is the album that you would't want to miss",
        albumType: .lp),
    .with(),
    .with(
        artist: "Third",
        title: "The third",
        information: "this is one of the albums",
        albumType: .cd),
    .with(),
    .with(information: "Very very long text that will make the cell even higher")
]

var playgroundServerClient = PlaygroundServerClient(albums: albums)

let albumViewModel = AlbumViewModel(appServerClient: playgroundServerClient)

let bundle = Bundle(for: AlbumViewController.self)
let storyboard = UIStoryboard(name: "Main", bundle: bundle)

let albumViewController = storyboard.instantiateInitialViewController() as! AlbumViewController
albumViewController.viewModel = albumViewModel

PlaygroundPage.current.liveView = configureViewController(
    screenSize: .iPhone7,
    orientation: .portrait,
    viewController: albumViewController
)
