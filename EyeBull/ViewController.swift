//
//  ViewController.swift
//  EyeBull
//
//  Created by Ali on 08/07/2022.
//

import UIKit

class ViewController: UIViewController {
    var currentSliderValue : Int = 50
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showAlert(){
        let alert = UIAlertController(
            title: "Hello World!",
            message: "The value of the slider is: \(currentSliderValue)" ,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "Awosome", style: .default, handler: nil
        )
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderOnMoved(_ slider : UISlider){
        currentSliderValue = lroundf(slider.value)
        print("The value of the slider is now: \(slider.value)")
    }
}

