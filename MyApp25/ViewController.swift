//
//  ViewController.swift
//  MyApp25
//
//  Created by user22 on 2017/10/2.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var webView: UIWebView!
    
    public func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        let urlString = request.url?.absoluteString
        print(urlString!)
        if (urlString?.hasPrefix("brad://"))!{
            
            return false
        }
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let html = Bundle.main.path(forResource: "brad", ofType: "html")
        let cont = try? String(contentsOfFile: html!)
        webView.loadHTMLString(cont!, baseURL: nil)
        
    }
}

