//
//  AlbumCollectionViewCell.swift
//  PlaygroundCollectionViewCells
//
//  Created by Jussi Suojanen on 18/02/2018.
//  Copyright © 2018 SwiftyJimmy. All rights reserved.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!

    var viewModel: AlbumCellViewModel? {
        didSet {
            bindViewModel()
        }
    }

    private func bindViewModel() {
        image?.image = UIImage(named: "bigAlbumCover")
        artistLabel?.text = viewModel?.artistText
        albumTitleLabel?.text = viewModel?.titleText
        informationLabel?.text = viewModel?.informationText
    }
}
