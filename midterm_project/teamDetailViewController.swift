//
//  teamDetailViewController.swift
//  midterm_project
//
//  Created by Gokul Kattamanchi on 10/15/16.
//  Copyright © 2016 Monmouth University. All rights reserved.
//

import UIKit

class teamDetailViewController: UIViewController ,UIWebViewDelegate{
    var selectedTeam: Int = 0
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.isHidden = true
        activityIndicatorView.startAnimating()
       // print(selectedTeam)
        switch(selectedTeam) {
        case 0:
            let url = URL (string: "http://www.arsenal.com/first-team/players/david-ospina");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 1:
            let url = URL (string: "http://www.arsenal.com/academy/players/damian-martinez");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
            //print ("got it")
        case 2:
            let url = URL (string: "http://www.arsenal.com/first-team/players/petr-cech");
            //let requestObj = NSURLRequest(URL: url!);
            //webView.loadRequest(requestObj);
           // NSString stringurl=[NSString stringWithFormat="http://www.google.com"]
           // NSURL *url=[NSURL URLWithString:stringurl];
            //var request = NSMutableURLRequest(URL: NSURL(string: "yoururl"))
                       //let session = NSURLSession.sharedSession()
            
            let request = NSMutableURLRequest(url: url!)
            request.httpMethod = "POST"
            request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
            webView.loadRequest(request as URLRequest);
            
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 3:
            let url = URL (string: "http://www.arsenal.com/first-team/players/mathieu-debuchy");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 4:
            let url = URL (string: "http://www.arsenal.com/first-team/players/kieran-gibbs");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 5:
            let url = URL (string: "http://www.arsenal.com/first-team/players/per-mertesacker");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 6:
            let url = URL (string: "http://www.arsenal.com/first-team/players/gabriel");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 7:
            let url = URL (string: "http://www.arsenal.com/first-team/players/laurent-koscielny");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 8:
            let url = URL (string: "http://www.arsenal.com/first-team/players/rob-holding");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 9:
            let url = URL (string: "http://www.arsenal.com/first-team/players/nacho-monreal");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 10:
            let url = URL (string: "http://www.arsenal.com/first-team/players/shkodran-mustafi");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 11:
            let url = URL (string: "http://www.arsenal.com/first-team/players/hector-bellerin");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 12:
            let url = URL (string: "http://www.arsenal.com/first-team/players/carl-jenkinson");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 13:
            let url = URL (string: "http://www.arsenal.com/first-team/players/aaron-ramsey");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 14:
            let url = URL (string: "http://www.arsenal.com/first-team/players/mesut-ozil");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
        case 15:
            let url = URL (string: "http://www.arsenal.com/first-team/players/alex-oxlade-chamberlain");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
            webView.scrollView.contentInset = UIEdgeInsets(top: -250, left: 0, bottom: -960, right: 0)
            webView.scrollView.bounces = false
       
        default:
            let url = URL (string: "http://www.arsenal.com/first-team");
            let requestObj = URLRequest(url: url!);
            webView.loadRequest(requestObj);
        }
        webView.delegate=self;
    }
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        return true
        
    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        //print("started")
        
        
       
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
       // print("Ended")
        
     
     webView.isHidden = false
        activityIndicatorView.stopAnimating()
        activityIndicatorView.hidesWhenStopped = true
        
     
  
    
    }
}
