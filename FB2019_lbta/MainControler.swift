//
//  MainControler.swift
//  FB2019_lbta
//
//  Created by Brian Voong on 10/30/19.
//  Copyright © 2019 Brian Voong. All rights reserved.
//

import UIKit
import LBTATools
import TinyConstraints

class PostCell: LBTAListCell<String> {
    
    let imageView = UIImageView(backgroundColor: .blue)
    let nameLabel = UILabel(text: "Name Label")
    let dateLabel = UILabel(text: "Friday at 11:11AM")
    let postTextLabel = UILabel(text: "Here is my post text")
    let imageViewGrid = UIView(backgroundColor: .yellow)
    
    override func setupViews() {
        backgroundColor = .white
//        addSubview(imageView)
//        addSubview(nameLabel)
//        addSubview(dateLabel)
//        addSubview(postTextLabel)
//        addSubview(imageViewGrid)
//        imageView.topToSuperview(offset: 12)
//        imageView.leadingToSuperview(offset: 12)
//        imageView.height(40)
//        imageView.width(40)
//        nameLabel.top(to: imageView)
//        nameLabel.leadingToTrailing(of: imageView, offset: 12)
//        dateLabel.topToBottom(of: nameLabel, offset: 8)
//        dateLabel.leading(to: nameLabel)
//
//        postTextLabel.topToBottom(of: imageView, offset: 8)
//        postTextLabel.leading(to: imageView)
//        postTextLabel.trailingToSuperview(offset: 12)
//
//        imageViewGrid.topToBottom(of: postTextLabel, offset: 8)
//        imageViewGrid.leading(to: postTextLabel)
//        imageViewGrid.trailingToSuperview(offset: 12)
//        imageViewGrid.bottomToSuperview(offset: -8)
        
        stack(hstack(imageView.withHeight(40).withWidth(40),
                     stack(nameLabel, dateLabel),
            spacing: 8).padLeft(12).padRight(12).padTop(12),
              postTextLabel,
              imageViewGrid,
              spacing: 8)
        
    }
}

class MainController: LBTAListController<PostCell, String>, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .init(white: 0.9, alpha: 1)
        
        self.items = ["hello", "WORLD", "1", "2"]
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 250)
    }
}

//import SwiftUI
//struct MainPreview: PreviewProvider {
//    static var previews: some View {
////        Text("main preview 123123")
//        ContainerView().edgesIgnoringSafeArea(.all)
//    }
//    
//    struct ContainerView: UIViewControllerRepresentable {
//        
//        func makeUIViewController(context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) -> UIViewController {
//            return MainController()
//        }
//        
//        func updateUIViewController(_ uiViewController: MainPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) {
//            
//        }
//    }
//}
