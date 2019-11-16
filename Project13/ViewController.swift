//
//  ViewController.swift
//  Project13
//
//  Created by vmulugu on 11/15/19.
//  Copyright © 2019 vmulugu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var currentImage: UIImageView!
    @IBOutlet weak var slider: UISlider!
    var imageName: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.title = "YCIFP"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importPicture))
    }

    @IBAction func changeFitterButton(_ sender: Any) {
        
    }
    @IBAction func saveButton(_ sender: Any) {
        
    }
    
    @IBAction func itensityChanged(_ sender: Any) {
        
        
    }
    
    @objc func importPicture(){
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
        

        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let image = info[.editedImage] as? UIImage else { return }
        dismiss(animated: true, completion: nil)
        imageName = image
    }
    
    
    
}

