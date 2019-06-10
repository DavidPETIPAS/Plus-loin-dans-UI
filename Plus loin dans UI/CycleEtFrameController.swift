//
//  CycleEtFrameController.swift
//  Plus loin dans UI
//
//  Created by David PETIPAS on 19/09/2018.
//  Copyright © 2018 David PETIPAS. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {
    
    @IBOutlet weak var vueFrameEtBounds: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load appelé")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did appear")
        UIView.animate(withDuration: 2, animations: {
            self.vueFrameEtBounds.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi) / 82)
        }) { (success)  in
            print("Frame -> : \(self.vueFrameEtBounds.frame)")
            print("Bounds -> : \(self.vueFrameEtBounds.bounds)")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
