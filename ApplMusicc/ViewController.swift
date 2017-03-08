//
//  ViewController.swift
//  ApplMusicc
//
//  Created by Juan Andres Garcia C on 6/03/17.
//  Copyright © 2017 Juan Andres Garcia C. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    private var reproductor: AVAudioPlayer!
    var x = 0
    var asset = ""
    func getImage (y:Int) -> String {
        if y == 1 {
            asset = "Arcangel-Ft.-Bad-Bunny-Tu-No-Vive-Así"
            return asset
        }else if y == 2 {
            asset = "justin-quiles-bad-bunny-almighty-crecia"
            return asset
        }else if y == 3 {
            asset = "Si-Tu-Novio-Te-Deja-Sola-J-Balvin-x-Bad-Bunny-KELOKE507-COM_-mp3-image"
            return asset
        }else if y == 4 {
            asset = "1487625364diabla"
            return asset
        }else if y == 5 {
            asset = "maxresdefault-3"
            return asset
        }
        print(asset)
        return "flayaste"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var nombre: UILabel!
   
    
    @IBAction func shuffle(_ sender: UIButton) {
        let random = arc4random_uniform(5)
        print(random)
        if random == 1{
            let sonidoURL = Bundle.main.url(forResource: "Arcangel x Bad Bunny - Tu No Vive Asi [Video oficial]", withExtension: "mp3")
            do{
                try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            }catch{
                print("error al cargar el archivo de sonido")
            }
            x = 1
            imagen.image = UIImage(named:getImage(y: 1))
            nombre.text = "Tu No Vive Así"
            
            
        }else if random == 2{
            let sonidoURL = Bundle.main.url(forResource: "Justin Quiles - Crecia [Official music video] Ft. Bad Bunny & Almighty", withExtension: "mp3")
            do{
                try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            }catch{
                print("error al cargar el archivo de sonido")
            }
            x = 2
            imagen.image = UIImage(named:getImage(y: 2))
            nombre.text = "Crecia"
            
        }else if random == 3{
            let sonidoURL = Bundle.main.url(forResource: "J. Balvin - Si Tu Novio Te Deja Sola ft. Bad Bunny", withExtension: "mp3")
            do{
                try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            }catch{
                print("error al cargar el archivo de sonido")
            }
            x = 3
            imagen.image = UIImage(named:getImage(y: 3))
            nombre.text = "Si Tu Novio Te Deja Sola"
        }else if random == 4{
            let sonidoURL = Bundle.main.url(forResource: "Farruko Ft Bad Bunny & Lary Over - Diabla Remix [Trap X Ficante]", withExtension: "mp3")
            do{
                try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            }catch{
                print("error al cargar el archivo de sonido")
                
            }
            x = 4
            imagen.image = UIImage(named:getImage(y: 4))
            nombre.text = "Diabla Remix"
        }else {
            let sonidoURL = Bundle.main.url(forResource: "El Sica - To' Te Llueve ft. Arcángel, Brytiago [Official Video]", withExtension: "mp3")
            do{
                try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
            }catch{
                print("error al cargar el archivo de sonido")
            }
            x = 5
            imagen.image = UIImage(named:getImage(y: 5))
            nombre.text = "To Te Llueve"
        }
        
    }
    
    @IBAction func TNVA(_ sender: Any) {
        let sonidoURL = Bundle.main.url(forResource: "Arcangel x Bad Bunny - Tu No Vive Asi [Video oficial]", withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
        }catch{
            print("error al cargar el archivo de sonido")
        }
        x = 1
        imagen.image = UIImage(named:getImage(y: 1))
        nombre.text = "Tu No Vive Así"
        
    }
    @IBAction func Crecia(_ sender: Any) {
         let sonidoURL = Bundle.main.url(forResource: "Justin Quiles - Crecia [Official music video] Ft. Bad Bunny & Almighty", withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
        }catch{
            print("error al cargar el archivo de sonido")
        }
        x = 2
        imagen.image = UIImage(named:getImage(y: 2))
        nombre.text = "Crecia"
        
    }
    @IBAction func STNTDS(_ sender: UIButton) {
         let sonidoURL = Bundle.main.url(forResource: "J. Balvin - Si Tu Novio Te Deja Sola ft. Bad Bunny", withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
        }catch{
            print("error al cargar el archivo de sonido")
        }
        x = 3
        imagen.image = UIImage(named:getImage(y: 3))
        nombre.text = "Si Tu Novio Te Deja Sola"
        
    }
    
    @IBAction func DiablaRX(_ sender: UIButton) {
        let sonidoURL = Bundle.main.url(forResource: "Farruko Ft Bad Bunny & Lary Over - Diabla Remix [Trap X Ficante]", withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
        }catch{
            print("error al cargar el archivo de sonido")
        }
        x = 4
        imagen.image = UIImage(named:getImage(y: 4))
        nombre.text = "Diabla Remix"
        

    }
    
        @IBAction func TTL(_ sender: UIButton) {
         let sonidoURL = Bundle.main.url(forResource: "El Sica - To' Te Llueve ft. Arcángel, Brytiago [Official Video]", withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
        }catch{
            print("error al cargar el archivo de sonido")
        }
            x = 5
        imagen.image = UIImage(named:getImage(y: 5))
            nombre.text = "To Te Llueve"
            
    }
  
    @IBAction func play(_ sender: UIButton) {
        if !reproductor.isPlaying{
            reproductor.play()
        }
    }
    @IBOutlet var imm: [UIImageView]!

    @IBAction func Pausa(_ sender: UIButton) {
        if reproductor.isPlaying{
            reproductor.pause()
        }
        
    }
    
    
    @IBAction func Stop(_ sender: UIButton) {
        if !reproductor.isPlaying{
            reproductor.stop()
            reproductor.currentTime = 0.0
        }
    }

}

