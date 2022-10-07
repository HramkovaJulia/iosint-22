//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by Artyom Prima on 30.09.2022.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {

    private lazy var photoImage: UIImageView = {
        let photoImage = UIImageView(frame: .zero)
        photoImage.translatesAutoresizingMaskIntoConstraints = false
        
        photoImage.contentMode = .scaleToFill
        return photoImage
    }()
    
    // MARK: Lifecycle
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupView()
        setupSubviews()
        setupLayout()
    }
    
    private func setupView() {
        contentView.clipsToBounds = true
        contentView.backgroundColor = .systemBackground
    }
    
    private func setupSubviews() {
        contentView.addSubview(photoImage)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            photoImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            photoImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            photoImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            photoImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }
    
    // MARK: - Public
    
    func setup1(
        with model: ImageCollection
    ) {
        photoImage.image = UIImage(named: model.image)
    }

}
