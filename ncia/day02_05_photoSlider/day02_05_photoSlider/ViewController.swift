//
//  ViewController.swift
//  day02_05_photoSlider
//
//  Created by 최철동 on 2016. 8. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    var mGenres: NSArray;
    var mScaleView : ScaleView? = nil;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let genres = ["genre-action.jpg",
        "genre-alternative.jpg",
        "genre-animation.jpg",
        "genre-blues.jpg",
        "genre-books.jpg",
        "genre-business.jpg",
        "genre-childrens.jpg",
        "genre-christian.jpg",
        "genre-classic.jpg",
        "genre-classical.jpg",
        "genre-classics.jpg",
        "genre-classicT.jpg",
        "genre-comedy.jpg",
        "genre-country.jpg",
        "genre-dance.jpg",
        "genre-documentary.jpg",
        "genre-drama.jpg",
        "genre-education.jpg",
        "genre-electronic.jpg",
        "genre-engineering.jpg",
        "genre-finearts.jpg",
        "genre-folk.jpg",
        "genre-health.jpg",
        "genre-hiphop.jpg",
        "genre-history.jpg",
        "genre-holiday.jpg",
        "genre-horror.jpg",
        "genre-humanities.jpg",
        "genre-independent.jpg",
        "genre-jazz.jpg",
        "genre-jpop.jpg",
        "genre-kayokyoku.jpg",
        "genre-kids.jpg",
        "genre-language.jpg",
        "genre-latin.jpg",
        "genre-literature.jpg",
        "genre-mathematics.jpg",
        "genre-music.jpg",
        "genre-newage.jpg",
        "genre-nonfiction.jpg",
        "genre-pop.jpg",
        "genre-rb.jpg",
        "genre-reality.jpg",
        "genre-reggae.jpg",
        "genre-rock.jpg",
        "genre-romance.jpg",
        "genre-science.jpg",
        "genre-scifi.jpg",
        "genre-shortfilms.jpg",
        "genre-socialScience.jpg",
        "genre-soundtrack.jpg",
        "genre-spoken.jpg",
        "genre-sports.jpg",
        "genre-teens.jpg",
        "genre-thriller.jpg",
        "genre-vocal.jpg",
        "genre-western.jpg",
        "genre-world.jpg"];
        
        let ps = PhotoSlider(frame: self.view.bounds);
        ps.setImageNames(genres);
        
        mScaleView = ScaleView(frame: self.view.bounds);
        
        self.view.addSubview(ps);
        
    }

//    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        <#code#>
//    }
    
//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        
//        
//    }


}

