//
//  ViewController.swift
//  RickAndMorty
//
//  Created by IsMalware on 29/09/23.
//

import UIKit

final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locationssVC = RMLocationViewController()
        let settingsVC = RMSettingsViewController()
        let episodesVC = RMEpisodeViewController()
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationssVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(
            title: "Characters",
            image: UIImage(systemName: "person"),
            tag: 1
        );
        nav2.tabBarItem = UITabBarItem(
            title: "Locations",
            image: UIImage(systemName: "globe"),
            tag: 2
        );
        nav3.tabBarItem = UITabBarItem(
            title: "Episodes",
            image: UIImage(systemName: "tv"),
            tag: 3
        );
        nav4.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "person"),
            tag: 4
        );
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [nav1, nav2, nav3, nav4],
            animated: true
        )
    }
}

