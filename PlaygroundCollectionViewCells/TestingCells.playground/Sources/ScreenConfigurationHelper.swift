import Foundation
import UIKit

public enum Orientation {
    case portrait
    case landscape
}

public enum ScreenSize {
    case iPhone4
    case iPhone5
    case iPhone5s
    case iPhone6s
    case iPhone6sPlus
    case iPhone7
    case iPhone7Plus
    case iPhone8
    case iPhone8Plus
    case iPhoneX
}

public func configureViewController(screenSize: ScreenSize = .iPhoneX,
                                    orientation: Orientation = .portrait,
                                    viewController: UIViewController) -> UIViewController
{
    switch screenSize {
    case .iPhone4:
        viewController.view.frame = CGRect(x: 0,
                                           y: 0,
                                           width: (orientation == .portrait) ? 320 : 480,
                                           height: (orientation == .portrait) ? 480 : 320)
    case .iPhone5, .iPhone5s:
        viewController.view.frame = CGRect(x: 0,
                                           y: 0,
                                           width: (orientation == .portrait) ? 320 : 568,
                                           height: (orientation == .portrait) ? 568 : 320)
    case .iPhone6s, .iPhone7, .iPhone8:
        viewController.view.frame = CGRect(x: 0,
                                           y: 0,
                                           width: (orientation == .portrait) ? 375 : 667,
                                           height:(orientation == .portrait) ? 667 : 375)
    case .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus:
        viewController.view.frame = CGRect(x: 0,
                                           y: 0,
                                           width: (orientation == .portrait) ? 414 : 736,
                                           height: (orientation == .portrait) ? 736 : 414)
    case .iPhoneX:
        viewController.view.frame = CGRect(x: 0,
                                           y: 0,
                                           width: (orientation == .portrait) ? 375 : 812,
                                           height: (orientation == .portrait) ? 812 : 375)
    }

    viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    viewController.preferredContentSize = viewController.view.frame.size

    return viewController
}

