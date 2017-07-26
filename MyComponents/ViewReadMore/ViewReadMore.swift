//
//  ViewReadMore.swift
//  MyComponents
//
//  Created by Victor B D Almeida on 24/07/17.
//  Copyright © 2017 Victor Almeida. All rights reserved.
//

import UIKit

/**
 UIView subclass that adds a resizeble textView
 
 - https://github.com/ilyapuchka/ReadMoreTextView
 */
@IBDesignable class ViewReadMore: UIView {

    // MARK: Outlets
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var textView: ReadMoreTextView!
    
    // MARK: Properties
    var view: UIView!
    let linkColor = UIColor(red: 0.015, green: 0.186, blue: 0.948, alpha: 1.0)


    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        xibSetup()
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "ViewReadMore", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    
    // MARK: - Configuration
    /** Setup view from .xib file */
    func xibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        
        configTextView()
    }
    
    /** Configure textView custom class */
    func configTextView() {
        textView.shouldTrim = true
        textView.maximumNumberOfLines = 4
        textView.attributedReadMoreText = NSAttributedString(string: "… Read more", attributes: [NSForegroundColorAttributeName: linkColor])
        // textView.attributedReadLessText = NSAttributedString(string: " Read less", attributes: [NSForegroundColorAttributeName: linkColor])
    }
    
}

