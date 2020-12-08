//
//  UINavigationControllerExtensions.swift
//  ACKategories-iOS
//
//  Created by Jakub Olejník on 08.12.2020.
//

import UIKit

extension UINavigationController {
    func pushViewController(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> ()) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        pushViewController(viewController, animated: true)
        CATransaction.commit()
    }
}
