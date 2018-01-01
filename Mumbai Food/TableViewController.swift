//
//  TableViewController.swift
//  Mumbai Food
//
//  Created by ABHISHEK NARKAR on 1/1/18.
//  Copyright © 2018 ABHISHEK NARKAR. All rights reserved.
//

import UIKit

var food = ["PavBhaji", "PaniPuri", "Falooda", "VadaPav", "MisalPav" ]
var foodDetails = ["Pav bhaji is a fast food dish from Maharashtra, India, consisting of a thick vegetable curry, fried and served with a soft bread roll.The dish originated in the 1850s as a fast lunchtime dish for textile mill workers in Mumbai. Pav bhaji was later served at restaurants throughout the city.Pav bhaji is now offered at outlets from simple hand carts to formal restaurants in India and abroad.", "Panipuri is a common street snack in several regions of the Indian subcontinent.It consists of a round, hollow puri, fried crisp and filled with a mixture of flavored water (commonly known as imli pani), tamarind chutney, chili, chaat masala, potato, onion and chickpeas.", "Falooda (also Faluda, Faloodah), is a cold dessert popular in the Indian subcontinent. Traditionally it is made from mixing rose syrup, vermicelli, sweet basil (sabza/takmaria) seeds, and pieces of jelly with milk, often topped off with a scoop of ice cream. The vermicelli used for preparing falooda is made from wheat,arrowroot, cornstarch, or sago", "Vada Pav, alternatively spelt Vada Pao, Wada Pav, or Wada Pao, is a vegetarian fast food dish native to the Indian state of Maharashtra. The dish consists of a deep fried potato dumpling placed inside a bread bun (pav) sliced almost in half through the middle. It is generally accompanied with one or more chutneys and a green chilli pepper.It originated as cheap street food in Mumbai, but is now served in food stalls and restaurants across India. It is also called Bombay Burger in keeping with its origins and its resemblance in physical form to a burger.", "Misal pav (Marathi)(मिसळपाव) is a popular dish from Maharashtra, India. It consists of misal (a spicy curry usually made of sprouted moth beans) and pav (a type of Indian bread roll).The final dish is topped with potato-chiwda mix, farsan or sev, onions, lemon and coriander (cilantro). It is usually served with bread or rolls toasted with butter and buttermilk or curd and papad. It is served as a breakfast dish, as a snack and also as a full meal"]
var myIndex = 0



class TableViewController: UITableViewController {

 


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return food.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

       cell.textLabel?.text = food[indexPath.row]

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
