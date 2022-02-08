//
//  CharterDetailsViewController.swift
//  JsonRickAndMorty
//
//  Created by Олейник Богдан on 08.02.2022.
//

import UIKit

class CharterDetailsViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet var characterImageView: CharacterImageView! {
        didSet {
            characterImageView.layer.cornerRadius = characterImageView.frame.width / 2
        }
    }
    
    // MARK: - Public properties
    
    var character: Character!
    
    private var spinnerView = UIActivityIndicatorView()
        
    // MARK: - UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let topItem = navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        }
        title = character.name
        characterImageView.fetchImage(from: character.image)
    }
    
}
