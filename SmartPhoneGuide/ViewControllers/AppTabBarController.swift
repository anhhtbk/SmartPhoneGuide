
import UIKit
import Material

class AppTabsController: TabsController {
    open override func prepare() {
        super.prepare()
        view.backgroundColor = Color.blueGrey.lighten5
        
        preparePageTabBar()
    }
}

extension AppTabsController {
    fileprivate func preparePageTabBar() {
        tabBarAlignment = .top
        tabBar.isDividerHidden = true
        tabBar.lineAlignment = .bottom
        tabBar.setLineColor(Color.blue.lighten2, for: .selected)
        tabBar.backgroundColor = Color.blue.darken2
    }
}

