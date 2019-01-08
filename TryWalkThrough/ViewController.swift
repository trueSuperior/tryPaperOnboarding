//
//  ViewController.swift
//  TryWalkThrough
//
//  Created by 池田 優真 on 2019/01/08.
//  Copyright © 2019 Yuma Ikeda. All rights reserved.
//

import UIKit
import paper_onboarding

class ViewController: UIViewController {

    @IBOutlet weak var onboardView: PaperOnboarding!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}


extension ViewController: PaperOnboardingDataSource {
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        let IMAGE = UIImage(named: "town")!
        let lightGray = UIColor.lightGray
        let darkGray = UIColor.darkGray
        let black = UIColor.black
    
        return [
            OnboardingItemInfo(informationImage: IMAGE,
                               title: "title",
                               description: "description",
                               pageIcon: IMAGE,
                               color: lightGray,
                               titleColor: lightGray,
                               descriptionColor: lightGray,
                               titleFont: UIFont.FONT,
                               descriptionFont: UIFont.FONT),
            
            OnboardingItemInfo(informationImage: IMAGE,
                               title: "title",
                               description: "description",
                               pageIcon: IMAGE,
                               color: darkGray,
                               titleColor: darkGray,
                               descriptionColor: darkGray,
                               titleFont: UIFont.FONT,
                               descriptionFont: UIFont.FONT),
            
            OnboardingItemInfo(informationImage: IMAGE,
                               title: "title",
                               description: "description",
                               pageIcon: IMAGE,
                               color: black,
                               titleColor: black,
                               descriptionColor: black,
                               titleFont: UIFont.FONT,
                               descriptionFont: UIFont.FONT)
            ][index]
    }
}

extension ViewController: PaperOnboardingDelegate {
    func onboardingWillTransitonToLeaving() {
        UIView.animate(withDuration: 0.4, animations: {
            self.onboardView.alpha = 0
        }) { _ in
            self.onboardView.removeFromSuperview()
        }
    }
}

extension UIFont {
    static let FONT = UIFont.systemFont(ofSize: UIFont.systemFontSize)
}
