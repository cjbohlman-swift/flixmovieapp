//
//  PosterCell.swift
//  flixster
//
//  Created by Mely Bohlman on 9/17/18.
//  Copyright © 2018 Chris Bohlman. All rights reserved.
//

import UIKit

class PosterCell: UICollectionViewCell {
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie! {
        didSet {
            posterImageView.af_setImage(withURL: (movie.posterUrl)!)
        }
    }
    
}
