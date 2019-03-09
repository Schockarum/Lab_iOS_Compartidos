import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel! //Vamos a hacer una animación con éste título
    
    
    let user = "Mauricio"
    let password = "1234"
    
    let student = Student(nombre: "Mauricio", carrera: "Ingeniería en Computación", nombreImagen: "ink")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        userTextField.text = ""
        passwordTextField.text = ""
        
        // ANIMACION
        titleLabel.center.x = view.frame.origin.x - titleLabel.frame.size.width//El label comienza en donde comienza el view menos lo que mide, i.e., exactamente atrás del view.
        //Hacemos lo mismo con los text fields porque vamos a animar todo
        userTextField.frame.origin.x = view.frame.origin.x - userTextField.frame.origin.x
        passwordTextField.frame.origin.x = view.frame.origin.x - passwordTextField.frame.origin.x
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        view.endEditing(true)
        //ANIMACION, Desplazamiento de vistas
        super.viewDidAppear(animated)
    }
    
    func setupUI() {
        //Button setup
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.backgroundColor = UIColor.mainPink()
        
        loginButton.layer.cornerRadius = 5.0
        
        //Button register
        registerButton.setTitleColor(UIColor.mainPink(), for: .normal)
        
        let imageView = UIImageView(image: UIImage(named: "gitTree"))
        
        self.view.insertSubview(imageView, at: 0)
        
    }
    
    

    @IBAction func logIn(_ sender: Any) {
        if userTextField.text == user && passwordTextField.text == password {
            
            if let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "profileVC") as? ProfileViewController {
                
                nextVC.student = student
                
                let navigationController = UINavigationController(rootViewController: nextVC)
                
                self.present(navigationController, animated: true, completion: nil)
              
            } else { //Revisar esta alerta, no entra al else
                print("Acceso")
                //creamos la alerta de datos incorrectos
                let errorAlert = UIAlertController(title: "LogIn Error", message: "Incorrect Username or Password", preferredStyle: .alert)
                
                //creamos las acciones de la alerta
                errorAlert.addAction(UIAlertAction(title: "Go Back", style: .default , handler: nil))
                
                present(errorAlert, animated: true, completion: nil) //presentamos la alerta
            }
            
            
        }
    }
    
    @IBAction func hideKeyboard(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
}

