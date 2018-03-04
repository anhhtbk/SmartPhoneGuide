
import UIKit
import Material
import Graph

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        SampleData.createSampleData()
        
//        let graph = Graph()
//        let search = Search<Entity>(graph: graph).for(types: "Category")
        
//        var viewControllers = [PostsViewController]()
//
//        for category in search.sync() {
//            if let name = category["name"] as? String {
//                viewControllers.append(PostsViewController(category: name))
//            }
//        }
//
//        let tabsController = AppTabsController(viewControllers: viewControllers)
//        let toolbarController = AppToolbarController(rootViewController: tabsController)
        
        let viewCotroller = PostsViewController(category: "Chụp ảnh màn hình")
        let toolbarController = AppToolbarController(rootViewController: viewCotroller)

        
//        let menuController = AppFABMenuController(rootViewController: toolbarController)

        window = UIWindow(frame: Screen.bounds)
        window!.rootViewController = toolbarController //menuController
        window!.makeKeyAndVisible()
    }
}
