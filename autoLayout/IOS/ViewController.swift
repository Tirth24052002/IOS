//
//  ViewController.swift
//  autoLayout
//
//  Created by Tirth Purohit on 29/05/23.
//

import UIKit
import Alamofire

struct UserRegister: Codable {
    let email: String
    let password: String
}

struct RegisterResponse: Codable {
    
    let id: Int?
    let token: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case token = "token"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        token = try values.decodeIfPresent(String.self, forKey: .token)
    }
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - URL  fiunction
        //self.getDataFromSever()
        let user = UserRegister(email: "eve.holt@reqres.in",password: "pistol")
        //self.registerUser(user: user)
        //getUserInfoUsingAlamoFire()
        registerUserWithAlamoFire(usr: user)
    }
    
    func registerUserWithAlamoFire(usr: UserRegister) {
        if let url = URL(string: "https://reqres.in/api/register"){
            let parm = ["email": usr.email,
                        "password": usr.password]
            AF.request(url,method: .post, parameters: parm, encoding: JSONEncoding.default, headers: nil, interceptor: nil, requestModifier: nil).response { (response) in
                switch response.result {
                case .success(let resdata):
                    guard let responseData = resdata else {
                        return
                    }
                    do {
                        let json = try JSONSerialization.jsonObject(with: responseData, options: [])
                        print("Json:\(json)")
                    } catch let error {
                        print("Error while Json Encodin:\(error.localizedDescription)")
                    }
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                    
                }
            }
        }
    }
    func getUserInfoUsingAlamoFire() {
        if let url = URL(string: "https://reqres.in/api/users?page=2"){
            AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil, requestModifier: nil).response { (reponse) in
                switch reponse.result {
                case .success(let data):
                    guard let responseData = data else {
                        return
                    }
                    do {
                        let json = try JSONSerialization.jsonObject(with: responseData, options: [])
                        print("Json:\(json)")
                    } catch let error {
                        print("Error while Json Encodin:\(error.localizedDescription)")
                    }
                    break
                case .failure(let error):
                    print("Erroe: \(error.localizedDescription)")
                }
            }
        }
    }
    
    func registerUser(user: UserRegister) {
        if let url = URL(string: "https://reqres.in/api/register") {
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "POST"
           
            do {
                urlRequest.httpBody = try JSONEncoder().encode(user)
            } catch let error {
                print("Error while Json Encodin:\(error.localizedDescription)")
            }
            urlRequest.addValue("application/json", forHTTPHeaderField: "Context_Type")
            urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
            
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
                if let error = error {
                    print("\(error.localizedDescription)")
                }
                
                guard let responseData = data else {
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    let userResponse = try decoder.decode(RegisterResponse.self, from: responseData)
                    print("is:\(userResponse.id)")
                    print("token:\(userResponse.token)")
//                    let json = try JSONSerialization.jsonObject(with: responseData, options: [])
//                    print("response: \(json)")
                } catch let error {
                    print("Error while json serialization: \(error.localizedDescription)")
                }
                
                }
            dataTask.resume()
        }
    }
    
    func getDataFromSever() {
        if let url = URL(string: "https://reqres.in/api/users?page=2"){
            let urlRequest = URLRequest(url: url)
//            urlRequest.timeoutInterval = 120
//            urlRequest.httpMethod = "POST"
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
                guard let resposeData = data else {
                    return
                }
                print("data:\(resposeData)")
                
                if let urlResponse = urlResponse {
                    print("URL Response:\(urlResponse)")
                }
                
                if let error = error {
                    print("Error:\(error.localizedDescription)")
                }
                do{
                    let jsonData  = try  JSONSerialization.jsonObject(with: resposeData, options: [])
                        print("Json Data: \(jsonData)")
                } catch let error {
                    print("Json parsing error: \(error.localizedDescription)")
                }
            }
            dataTask.resume()
        }
    }
}
struct Student{
    var id: Int
    var email: String
    var firstName: String
    var lastName: String
    var avatar: String
}
