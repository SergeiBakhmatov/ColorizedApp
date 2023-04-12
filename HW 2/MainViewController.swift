//
//  MainViewController.swift
//  HW 2
//
//  Created by Sergei Bakhmatov on 12.04.2023.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setBackgraundColor(for colorView: UIColor)
}

final class MainViewController: UIViewController {
    
    private var viewBackgraundColor: UIColor! {
        didSet {
            view.backgroundColor = viewBackgraundColor
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.backgraundColor = view.backgroundColor
        settingsVC.delegate = self
    }
    
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setBackgraundColor(for colorView: UIColor) {
        self.viewBackgraundColor = colorView
    }
    
    
}
