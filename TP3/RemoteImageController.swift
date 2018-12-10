//
//  RemoteImageController.swift
//  TP3
//
//  Created by HAAS Romain on 10/12/2018.
//  Copyright © 2018 HAAS Romain. All rights reserved.
//

import UIKit


class RemoteImageController: UIViewController{
    
    public var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button1 = UIButton(frame: CGRect(x: 50, y: 100, width: 100, height: 50))
        button1.backgroundColor = .red
        button1.setTitle("Ajout", for: .normal)
        button1.addTarget(self, action: #selector(affiche), for: .touchUpInside)
        
        let button2 = UIButton(frame: CGRect(x: 180, y: 100, width: 100, height: 50))
        button2.backgroundColor = .magenta
        button2.setTitle("Image", for: .normal)
        button2.addTarget(self, action: #selector(ajout), for: .touchUpInside)
        
        let buttal = UIButton(frame: CGRect(x: 300 , y: 100, width: 100, height: 50))
        buttal.backgroundColor = .magenta
        buttal.setTitle("Url", for: .normal)
        buttal.addTarget(self, action: #selector(url), for: .touchUpInside)
        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(buttal)
    }
    
    @objc func affiche(sender: UIButton!) {
        imageView  = UIImageView(frame:CGRect(x:50, y:200, width:300, height:300));
        imageView.backgroundColor = .red
        self.view.addSubview(imageView)
    }
    
    @objc func ajout(sender: UIButton!) {
        imageView.image = UIImage(named:"Test.jpg")
        imageView.contentMode = .scaleAspectFill
        self.view.addSubview(imageView)
    }
    
    @objc func url(sender: UIButton!) {
       
        let url = URL(string: "https://cdn.pixabay.com/photo/2013/04/06/11/50/image-editing-101040_960_720.jpg" )!
        
        if let data = try? Data(contentsOf: url) {
            imageView.image = UIImage(data: data)
        }
        
        imageView.contentMode = .scaleAspectFill
        
        self.view.addSubview(imageView)
    }
    
}
