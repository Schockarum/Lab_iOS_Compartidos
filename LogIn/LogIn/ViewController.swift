import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel! //Vamos a hacer una animación con éste título
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var balloon: UIImageView!
    @IBOutlet weak var cloud1: UIImageView!
    @IBOutlet weak var cloud2: UIImageView!
    @IBOutlet weak var cloud4: UIImageView!
    
    
    
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
        
        //Animaciones por nuestra cuenta
        loginButton.center.y = view.frame.size.height
        registerButton.center.y = view.frame.size.height
        
        //animaciones de tarea
        balloon.frame.origin.y = view.frame.size.height - balloon.frame.size.height - 100
        cloud1.frame.origin.x = view.frame.width + cloud1.frame.size.width
        cloud2.frame.origin.x = view.frame.origin.x - cloud2.frame.size.width
        cloud4.frame.origin.x = view.frame.origin.x - cloud4.frame.size.width
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        view.endEditing(true)
        //ANIMACION, Desplazamiento de vistas
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.75){
            self.titleLabel.center.x = self.view.center.x
//            self.userTextField.center.x = self.view.center.x
//            self.passwordTextField.center.x = self.view.center.x
        }
        
        UIView.animate(withDuration: 0.75, delay: 0.3, options: [], animations:
            {self.userTextField.center.x = self.view.center.x}, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.5, options: [], animations: {self.passwordTextField.center.x = self.view.center.x}, completion: nil)
        
        UIView.animate(withDuration: 1.75, delay: 0.0, options: .transitionFlipFromBottom, animations:
            {self.loginButton.center.y = self.view.center.y - 140}, completion: nil)
        
        UIView.animate(withDuration: 2.5, delay: 0.0, options: .transitionFlipFromBottom, animations: {self.registerButton.center.y = self.view.center.y - 90}, completion: nil)
        
        //animacion del globo
        UIView.animate(withDuration: 5, delay: 0.0, options: [.repeat, .autoreverse, .transitionFlipFromBottom], animations: {self.balloon.frame.origin.y = self.view.center.y - 90}, completion: nil)
        //Animación de la nube1
        UIView.animate(withDuration: 10, delay: 0, options: [.repeat, .transitionFlipFromLeft], animations: {self.cloud1.frame.origin.x = self.view.frame.origin.x - self.cloud1.frame.origin.x}, completion: nil)
        //Animacion de la nube 2
        UIView.animate(withDuration: 8, delay: 0, options: [.repeat, .transitionFlipFromRight], animations: {self.cloud2.frame.origin.x = self.view.frame.size.width}, completion: nil)
        //Animacion de la nube 4
        UIView.animate(withDuration: 5, delay: 0, options: .transitionFlipFromRight, animations: {self.cloud4.frame.origin.x = self.view.center.x - self.cloud4.frame.size.width/2}, completion: nil)
    }
    
    func setupUI() {
        //Button setup
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.backgroundColor = UIColor.mainColor()
        titleLabel.textColor = UIColor.mainColor()
        
        loginButton.layer.cornerRadius = 5.0
        
        //Button register
        registerButton.setTitleColor(UIColor.accentColor(), for: .normal)
        
        let imageView = UIImageView(image: UIImage(named: "bg-sunny"))
        
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

