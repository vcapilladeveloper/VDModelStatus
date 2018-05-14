//
//  VDModelStatusView.swift
//  VDModelStatus
//
//  Created by Victor Capilla Borrego on 13/5/18.
//  Copyright © 2018 Victor Capilla Borrego. All rights reserved.
//

import UIKit

public class VDModelStatusView: UIView {

    @IBOutlet weak var statusImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    let nibName = "VDModelStatusView"
    var contentView: UIView!
    
    // MARK: Set up View
    
    public override init(frame: CGRect) {
        // For use in cado
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        // For use in Interface Builder
        super.init(coder: aDecoder)
        setUpView()
    }
    
    private func setUpView() {
        // Set variable contentView to be view isnide XIB file. For these, access to de Bundle for this framework (self), the NIB and finaly the view inside NIB.
        let bundle = Bundle(for: type(of: self))
        // Get the nib form bundle
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        // The view inside NIB
        self.contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        // Add contetView that we get from nib inside bundle, in this class View hierarchy
        addSubview(contentView)
        
        // Set contetnView equal bounds of the parent view
        contentView.center = self.center
        // Tell that we don't aprove any resizing because view has specific size, passing an empty array.
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        
        // Finally, set empty text into labels.
        titleLabel.text = ""
        subtitleLabel.text = ""
    }
    
    // Provide functions to upedate view
    public func set(image: UIImage) {
        self.statusImage.image = image
    }
    
    public func set(title text: String) {
        self.titleLabel.text = text
    }
    
    public func set(subtitle text: String) {
        self.subtitleLabel.text = text
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
