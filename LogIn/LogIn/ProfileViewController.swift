import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var careerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var student = Student()
    
    var dismissAction: ((_: UIAlertAction) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
        dismissAction = {[unowned self](action: UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func setupUI() {
        navigationItem.title = "Profile"
        //Right button
        let logOutButton = UIBarButtonItem(title: "Log Out", style: .done, target: self, action: #selector(logOut))
        
        navigationItem.rightBarButtonItem = logOutButton
        
        //Student
        nameLabel.text = student.nombre
        careerLabel.text = student.carrera
        imageView.image = UIImage(named: student.nombreImagen)
        
    }
    
    @objc func logOut() {
        let alert = UIAlertController(title: "Log Out", message: "¿Seguro de querer cerrar tu sesión?", preferredStyle: .actionSheet) //Crear la alerta
        //Esilos de alerta disponibles: .actionSheet y .alert
        
        //Creamos las acciones de la alerta
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Ok", style: .destructive, handler: { (action) in
            self.dismiss(animated: true, completion: nil) // el estilo destructive pone el texto rojo y el handler lo que hace es un dismiss al view controller
        }))
        
        present(alert, animated: true, completion: nil) //Presentamos la alerta
        
    }
    

    

}
