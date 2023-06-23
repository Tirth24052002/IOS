//
//  MapViewVC.swift
//  IOS
//
//  Created by Tirth Purohit on 20/06/23.
//

import UIKit
import MapKit
import CoreLocation

class MapViewVC: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var mapView: MKMapView!
    private var locationManager = CLLocationManager()
    private var initialLocation = CLLocation(latitude: 23.028641799485673 ,
                                             longitude: 72.4994319388365)
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        checkLoactionServices()
        centerLocation()
        cameraBoundary()
        //addAnnotion()
        addCustomAnnotations()
        //        mapView.delegate = self
        //        mapView.backgroundColor = .red
        //        mapView.showsCompass = true
        mapView.showsUserLocation = true
    }
}

// MARK: - Function
extension MapViewVC {
    func checkLoactionServices() {
        DispatchQueue.global().async {
            if CLLocationManager.locationServicesEnabled() {
                self.checkLocationAuth()
            } else {
                print("Location is disabled")
            }
        }
    }
    func checkLocationAuth() {
        switch locationManager.authorizationStatus {
        case .authorizedAlways:
            print("Always Authorized")
            break
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            break
        case .denied:
            print("Denied")
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            mapView.showsUserLocation = true
            break
        default:
            print("Default")
            break
        }
        locationManager.delegate = self
        //locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingHeading()
    }
    
    func centerLocation() {
        let region = MKCoordinateRegion(center: initialLocation.coordinate,
                                        latitudinalMeters: 500,
                                        longitudinalMeters: 500)
        mapView.setRegion(region, animated: true)
    }
    
    func cameraBoundary() {
        let region = MKCoordinateRegion(center: initialLocation.coordinate,
                                        latitudinalMeters: 500,
                                        longitudinalMeters: 500)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: region),
                                  animated: true)
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 2000)
        mapView.setCameraZoomRange(zoomRange,
                                   animated: true)
    }
    
    func addAnnotion() {
        let annotations = MKPointAnnotation()
        annotations.title = "Simform"
        annotations.coordinate = CLLocationCoordinate2D(latitude:
                                                            initialLocation.coordinate.latitude,
                                                        longitude:
                                                            initialLocation.coordinate.longitude)
        mapView.addAnnotation(annotations)
    }
    
    func addCustomAnnotations() {
        let customA = CustomAnnotation()
        customA.title = "Your Location"
        customA.coordinate = CLLocationCoordinate2D(latitude:
                                                        initialLocation.coordinate.latitude,
                                                    longitude:
                                                        initialLocation.coordinate.longitude)
        mapView.addAnnotation(customA)
    }
}

// MARK: - Cl Location Delegate
extension MapViewVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation]) {
        print(locations)
    }
}

// MARK: - Map View Delegate
extension MapViewVC: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is CustomAnnotation {
            let  reuseId = "CustomAnnotation"
            var aView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId)
            if aView == nil {
                aView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
                aView?.canShowCallout = true
                aView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            } else {
                aView?.annotation = annotation
            }
            guard let customAnnotation = annotation as? CustomAnnotation,
                  let image = customAnnotation.imgName else {
                return nil
            }
            aView?.image = image
            return aView
        } else {
            return nil
        }
    }
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView,
                 calloutAccessoryControlTapped control: UIControl) {
        print("The About Button is Tapped")
    }
    
}

// MARK: - Class Point Annotation
class CustomAnnotation: MKPointAnnotation {
    var imgName: UIImage? = UIImage(named: "locationIcon") ?? UIImage()
}
