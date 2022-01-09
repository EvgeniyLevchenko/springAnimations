//
//  ViewController.swift
//  springAnimations
//
//  Created by QwertY on 06.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var navigationBar: UINavigationBar!
    @IBOutlet private weak var googleLogoImageView: UIImageView!
    @IBOutlet private weak var searchTextField: UITextField!
    @IBOutlet private weak var voiceSearchButton: UIButton!
    @IBOutlet private weak var bottomBarView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
    
        transformViews()
        
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.navigationBar.transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.googleLogoImageView.transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.searchTextField.transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.voiceSearchButton.transform = .identity
        }, completion: nil)
        
        UIView.animate(withDuration: 2, delay: 1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.bottomBarView.transform = .identity
        }, completion: nil)
    }
    
    private func transformViews() {
        navigationBar.transform = CGAffineTransform(translationX: 0, y: -2 * navigationBar.frame.size.height)
        googleLogoImageView.transform = CGAffineTransform(translationX: 0, y: view.center.y - googleLogoImageView.center.y)
        searchTextField.transform = CGAffineTransform(translationX: 0, y: view.frame.size.height / 2 + 50)
        voiceSearchButton.transform = CGAffineTransform(translationX: 0, y: view.frame.size.height / 2)
        bottomBarView.transform = CGAffineTransform(translationX: 0, y: view.frame.size.height + bottomBarView.frame.size.height)
    }
}

