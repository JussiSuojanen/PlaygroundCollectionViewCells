//
//  ViewController.swift
//  PlaygroundCollectionViewCells
//
//  Created by Jussi Suojanen on 18/02/2018.
//  Copyright © 2018 SwiftyJimmy. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {
    @IBOutlet private var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            (collectionView.collectionViewLayout as? UICollectionViewFlowLayout)?.estimatedItemSize = UICollectionViewFlowLayoutAutomaticSize
        }
    }

    let viewModel = AlbumViewModel(cells: [.with(), .with(albumType: .lp), .with()])

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension AlbumViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.cells.value.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellViewModel = viewModel.cells.value[indexPath.row]
        let identifier = (cellViewModel.cellSize == .big) ? "bigAlbumCell" : "smallAlbumCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? AlbumCollectionViewCell
        cell?.viewModel = cellViewModel
        return cell ?? UICollectionViewCell()
    }
}
