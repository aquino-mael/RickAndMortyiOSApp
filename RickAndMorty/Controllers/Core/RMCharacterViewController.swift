//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by IsMalware on 29/09/23.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationItem.largeTitleDisplayMode = .automatic;
        title = "Characters"
    }
}
