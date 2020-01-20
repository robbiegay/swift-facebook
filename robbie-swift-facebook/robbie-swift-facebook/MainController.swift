//
//  MainController.swift
//  robbie-swift-facebook
//
//  Created by Robbie Gay on 1/20/20.
//  Copyright © 2020 robbiegay. All rights reserved.
//

import UIKit
//import SwiftUI
import LBTATools

class PostCell: LBTAListCell<String> {
    
    let imageView = UIImageView(backgroundColor: .red)
    let nameLabel = UILabel(text: "Name Label")
    let dateLabel = UILabel(text: "Friday at 11:11AM")
    let postTextLabel = UILabel(text: "Here is my post text")
    let imageViewGrid = UIView(backgroundColor: .yellow)
    
    override func setupViews() {
        backgroundColor = .white
        stack(hstack(imageView.withHeight(40).withWidth(40),
                     stack(nameLabel, dateLabel),
                     spacing: 8
            ).padLeft(12).padRight(12).padTop(12),
              postTextLabel,
              imageViewGrid,
              spacing: 12)
    }
}

class MainController: LBTAListController<PostCell, String>, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .init(white: 0.9, alpha: 1)
        
        self.items = ["Hello", "WORLD", "1", "2", "1", "2", "1", "2"]
    }
    
    func collectionView(_ collectionView: UICollectionView,
        layout UICollectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 300)
    }
}

//struct MainPreview: PreviewProvider {
//    static var previews: some View {
//        Text("Main Preview")
//    }
//}

