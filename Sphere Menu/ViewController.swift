//
//  ViewController.swift
//  Sphere Menu
//
//  Created by Camilo Morales on 10/21/14.
//  Copyright (c) 2014 Camilo Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SphereMenuDelegate {
    
    var screenWidth:CGFloat! = UIScreen.main.bounds.width;//屏幕的宽度
    var screenHeight:CGFloat! = UIScreen.main.bounds.height;//屏幕的高度
    var menu:SphereMenu!;
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addMenu();
    }
    
    func addMenu() {
        let start = UIImage(named: "start")
        let image1 = UIImage(named: "icon_file_menu_folder")
        let image2 = UIImage(named: "icon_file_menu_img")
        let image3 = UIImage(named: "icon_file_menu_movie")
        let images:[UIImage] = [image1!,image2!,image3!]
        menu = SphereMenu(startPoint: CGPoint(x: screenWidth-40, y: screenHeight-100), startImage: start!, submenuImages:images, tapToDismiss:true)
        menu.delegate = self
        self.view.addSubview(menu)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func sphereDidSelected(_ index: Int) {
        print("\(index)")
    }

    @IBAction func hideView(_ sender: AnyObject) {
        menu.hideViewToBottom();
    }
    
    @IBAction func showView(_ sender: AnyObject) {
        menu.showView();
    }
}

