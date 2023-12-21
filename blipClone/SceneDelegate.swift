//
//  SceneDelegate.swift
//  blipClone
//
//  Created by 김민택 on 12/21/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)

        let tabbar = UITabBarController()
        tabbar.setViewControllers([TodayViewController(), ArtistViewController(), ViewController(), FanLogViewController(), TimeLineViewController()], animated: true)

        if let items = tabbar.tabBar.items {
            items[0].selectedImage = UIImage(systemName: "heart.fill")
            items[0].image = UIImage(systemName: "heart")
            items[0].title = "투데이"

            items[1].selectedImage = UIImage(systemName: "heart.fill")
            items[1].image = UIImage(systemName: "heart")
            items[1].title = "아티스트"

            items[2].selectedImage = UIImage(systemName: "heart.fill")
            items[2].image = UIImage(systemName: "heart")
            items[2].title = "작성"

            items[3].selectedImage = UIImage(systemName: "heart.fill")
            items[3].image = UIImage(systemName: "heart")
            items[3].title = "팬로그"

            items[4].selectedImage = UIImage(systemName: "heart.fill")
            items[4].image = UIImage(systemName: "heart")
            items[4].title = "타임라인"
        }

        window?.rootViewController = tabbar
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

