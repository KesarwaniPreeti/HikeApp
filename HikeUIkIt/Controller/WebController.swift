//
//  WebController.swift
//  HikeUIkIt
//
//  Created by Preeti Kesarwani on 7/15/23.
//

import UIKit


class WebController: UIViewController {
    

    
    
    @IBOutlet weak var tableViewOfWeb: UITableView!
    

    
    let DATA = [
        data(websiteImage: UIImage(systemName: "apps.iphone")!, websiteName: "Application", websiteLink: "Hike"),
        data(websiteImage: UIImage(systemName: "info.circle")!, websiteName: "Compatibility", websiteLink: "IOS"),
        data(websiteImage: UIImage(systemName: "swift")!, websiteName: "Techology", websiteLink: "IOS,IpadsOS"),
        data(websiteImage: UIImage(systemName: "gear.circle")!, websiteName: "Version", websiteLink: "Swift"),
        data(websiteImage: UIImage(systemName: "ellipsis.curlybraces")!, websiteName: "Developer", websiteLink: "Preeti Kesarwani"),
        data(websiteImage: UIImage(systemName: "paintpalette.fill")!, websiteName: "Desiner", websiteLink: "Preeti"),
        data(websiteImage: UIImage(systemName: "globe")!, websiteName: "Website", websiteLink: "google.com")
        
    ]
    
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOfWeb.dataSource = self
       
    
             tableViewOfWeb.register(UINib(nibName: "websiteName", bundle: nil), forCellReuseIdentifier: "cell")
        
   
    

    
    }
    
    


}
extension WebController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DATA.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOfWeb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! websiteName
        cell.websiteName.text = DATA[indexPath.row].websiteName
        cell.websiteLink.text = DATA[indexPath.row].websiteLink
        cell.img.image = DATA[indexPath.row].websiteImage

        return cell

    }
    
    
    
    
}

