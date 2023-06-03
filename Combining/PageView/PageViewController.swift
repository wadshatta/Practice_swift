//
//  PageViewController.swift
//  Combining
//
//  Created by MacBook Pro on 03/06/2023.
//

import Foundation
import UIKit
import SwiftUI


struct PageViewController<Page: View>: UIViewControllerRepresentable {

    var pages: [Page]

    func makeUIViewController(context: Context) -> UIPageViewController {

        let pageViewController = UIPageViewController(

            transitionStyle: .scroll,

            navigationOrientation: .horizontal)


        return pageViewController

    }
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {

            pageViewController.setViewControllers(

                [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)

        }
}
