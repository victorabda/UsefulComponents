//
//  ViewController.swift
//  MyComponents
//
//  Created by Victor B D Almeida on 24/07/17.
//  Copyright © 2017 Victor Almeida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var viewReadMore: ViewReadMore!
    @IBOutlet weak var viewReadMore2: ViewReadMore!
    @IBOutlet weak var viewReadMore3: ViewReadMore!
    
    
    struct ReadMoreData {
        var title: String = ""
        var text: String = ""
    }
    
    var myData = [ReadMoreData]()
    var shouldTrim = [Bool]()
    
    
    // MARK: - Initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        createMockData()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
        } else {
            print("Portrait")
        }

        createMockData()
    }
    
    
    // MARK: - Component data
    func createMockData() {
        viewReadMore.lblTitle.text = "About your host"
        viewReadMore.textView.text = "Michel\'s purpose is to activate people\'s love for the ocean and unleash their potential to take action. As an Avid sea turtle, he has been surfind for 10 at beaches across the world. He has worked with Sea Turtles Forever for the past 8 years (4 of them on their Board of Directors). Learn more about his personal ocean experience creation work at www.surfani.com ."

        viewReadMore2.lblTitle.text = "What we\'ll do"
        viewReadMore2.textView.text = "Join Michael and your fellow surfers at the Traveler Surf and Swim Club, where you will kick off the day with a reflective discussion on our individual relationshop with the ocean. The we will grab our Traveler boards and head out to the waves, where Michael will guide you through surfing basics and show you how to ride the waves."

        viewReadMore3.lblTitle.text = "A giant text"
        viewReadMore3.textView.text = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
        
        // viewReadMore3.lblTitle.text = "What I\'ll provide"
        // viewReadMore3.textView.text = "Wetsuit, surfboard\nsend your height before arriving\n\nGranola Bars"
    }
    
    
    @IBAction func btnReload(_ sender: Any) {
        viewReadMore.textView.shouldTrim = true
        viewReadMore2.textView.shouldTrim = true
        viewReadMore3.textView.shouldTrim = true
    }
    
}
