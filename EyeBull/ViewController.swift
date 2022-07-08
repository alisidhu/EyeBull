//
//  ViewController.swift
//  EyeBull
//
//  Created by Ali on 08/07/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider! // First press ctrl+ click on slider and select New Referencing Outlet then it will be connected to slider
    var currentSliderValue : Int = 0
    
    @IBOutlet var targetLabel: UILabel!
    var targetValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setting inital value of slider
        currentSliderValue = lroundf(slider.value)
        
       setTargetRandomValue()

    }


    @IBAction func showAlert(){
        let message = "The value of the slider is: \(currentSliderValue)" +
                       "\nThe target value is: \(targetValue)"
        let alert = UIAlertController(
            title: "Hello World!",
            message: message ,
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "Awosome", style: .default, handler: nil
        )
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startOverGame()
    }
    
    @IBAction func sliderOnMoved(_ slider : UISlider){
        currentSliderValue = lroundf(slider.value)
        print("The value of the slider is now: \(slider.value)")
    }
    
     func startOverGame(){
        setTargetRandomValue()
        currentSliderValue = 50
        slider.value = Float(currentSliderValue)
    }
    
    func setTargetRandomValue(){
        //Generating random number
        targetValue = Int.random(in: 1...100)
        updateLabels()
    }
    func updateLabels() {
      targetLabel.text = String(targetValue)
    }
}

