//
//  ViewController.swift
//  Sonido
//
//  Created by Alumno on 21/08/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer?
    
    @IBAction func doTapReproducir(_ sender: Any) {
        if player != nil {
            player?.play()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //Bundle representa al grupo o paquete al que pertenece(hay varios bundles (main=principal)
        
        let path = Bundle.main.path(forResource: "Dream More Than Love.mp3", ofType: nil)
        //Transformas el path a url
        let url = URL(fileURLWithPath: path!)
        
        do {
             player = try AVAudioPlayer(contentsOf: url)
        } catch {
            
        }
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

