//
//  ViewController.swift
//  web request
//
//  Created by Sekou Perry on 9/10/16.
//  Copyright © 2016 Sekou Perry. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("http://sekouperry.com")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadRequest(urlStr: String)  {
        
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
    
    

    @IBAction func loadCats(sender: AnyObject) {
        loadRequest("http://sekouperry.com")
    }

    @IBAction func loadDogs(sender: AnyObject) {
        loadRequest("http://stepitupevents.com")
    }
    
    @IBAction func loadBirds(sender: AnyObject) {
        loadRequest("http://sekouperry.com")
    }
}

