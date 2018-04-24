//
//  ViewController.swift
//  xyloalphabet
//
//  Created by iMac on 22/04/2018.
//  Copyright © 2018 Zajerao. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var tocarAudio : AVAudioPlayer!  //must have exclamation mark, will learn later
    let sonidosDeLasLetras = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

//TO DO
    //put sender tags in an array as well?
    //maybe an object mapping a Letter to a Sound and a Symbol (e.g. A)?
    
//    func botonPulsado() {
//        print("Button with tag \(sender.tag) was pressed")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func botonPulsado(_ sender: UIButton) {
        
        let nombreDelArchivoSeleccionado : String = sonidosDeLasLetras[sender.tag - 1]
 //       print("The name of the file selected is \(nombreDelArchivoSeleccionado)")
        
        let urlSonido = Bundle.main.url(forResource: nombreDelArchivoSeleccionado, withExtension: "wav")
       
        do {
            tocarAudio = try AVAudioPlayer(contentsOf: urlSonido!)
        }
        catch {
            print(error)
        }
        tocarAudio.play()
        
 //       print (nombreDelArchivoSeleccionado)

//print("Button with tag \(sender.tag) was pressed") //just need for debugging, can remove later
        
            etiqetadoLetra.text = "\(nombreDelArchivoSeleccionado)" //this only works because the wav file names coincide with the string we output to the label


    }
    
    @IBOutlet weak var etiqetadoLetra: UILabel!

    
}

