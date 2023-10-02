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
        
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
                switch result {
                case .success(let model):
                    print("Total: " + String(model.info.count))
                    print("Page result count: " + String(model.results.count))
                case .failure(let error):
                    print(String(describing: error))
                }
            }
    }
}
