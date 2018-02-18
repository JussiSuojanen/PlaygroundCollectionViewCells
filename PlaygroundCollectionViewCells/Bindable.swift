//
//  Bindable.swift
//  PlaygroundCollectionViewCells
//
//  Created by Jussi Suojanen on 18/02/2018.
//  Copyright © 2018 SwiftyJimmy. All rights reserved.
//

import Foundation

class Bindable<T> {
    typealias Listener = ((T) -> Void)?
    var listener: Listener

    var value: T {
        didSet {
            listener?(value)
        }
    }

    init(_ value: T) {
        self.value = value
    }

    func bind(_ listener: ((T) -> Void)?) {
        self.listener = listener
    }

    func bindAndFire(_ listener: ((T) -> Void)?) {
        self.listener = listener
        listener?(value)
    }
}
