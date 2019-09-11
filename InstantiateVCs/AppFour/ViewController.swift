//
//  ViewController.swift
//  AppFour
//
//  Created by Luis Mauricio Esparza Vazquez on 2/15/19.
//  Copyright © 2019 Schock. All rights reserved.
//Este proyecto es un frankenstein, debería estar separado en 2, pero pues por la confusión terminé uniendolos 😅

import UIKit

class ViewController: UIViewController {

    //Declaramos las imagenes fuera de la funcion para poder usarlas donde sea necesario. DEL PASO 6 DE LINEAS
    let image1 = UIImageView(image: UIImage(named: "Random-image-15"))
    let image2 = UIImageView(image: UIImage(named: "gatoauto"))

    //Declaramos y conectamos los text fields de usuario y contraseña, tambien declaramos un password y un usuario sólo para hacer las pruebas de un login. DEL PASO 7 DE LINEAS
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var userTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    let user = "Mauricio"
    let password = "1234567"

    //Ahora ésto es para la nueva vista despues de hacer log in. DEL PASO 9 DE LINEAS
    let mauricio = Estudiante(nombre: "Mauricio", apellido: "Esparza", edad: 23, carrera: "Ingeniería en Computación", correo: "schockarum.9503@gmail.com", descripcion: "Estudiante de ing com en la FI de la UNAM", imageName: "gatoauto", numCuenta: "311078343", pasatiempos: ["Piano":"Practicar","Libretas":"Dibujar"])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupUI()
        
        
    }

    func setupUI(){
    //Button setup configuration
        logInButton.setTitleColor(UIColor .white, for: .normal)
        logInButton.backgroundColor = UIColor(red:0.48, green:0.18, blue:0.78, alpha:1.0)
        logInButton.layer.cornerRadius = 5.0
        
    //Button register
        registerButton.setTitleColor(UIColor.mainPink(), for: .normal)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        //Aquí, una vez que la vista ya va a aparecer, i.e., la vista ya cargo y se sabe que viene la pantalla principal de la app
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Una vez que la app se sabe que va a aparecer, entra el paso donde aparece finalmente. Aquí agregamos las imagenes que vamos a utilizar
        //DEL PASO 5 DE LINEAS
        
//        let image1 = UIImageView(image: UIImage(named: "Random-image-15")) //cargamos la imagen 1 con margenes automáticos
//        let image2 = UIImageView(image: UIImage(named: "gatoauto")) //cargamos la imagen 2 con margenes automaticos
        //DEL PASO 5 DE LINEAS
        
        image1.frame.origin = CGPoint(x: self.view.frame.size.width/4, y: self.view.frame.size.height/4)//del origen, el self.view.frame.size.width es el ancho de la pantalla total, por eso lo dividimos entre dos, para no llegar a los límites, lo mismo para self.view.frame.size.height.
        image2.frame.origin = CGPoint(x: self.view.frame.size.width/4, y: self.view.frame.size.height/4)//lo mismo para el image2
        //DEL PASO 5 DE LINEAS
        
        //Ahora necesitamos agregar las subvistas
        self.view.addSubview(image1)
        self.view.addSubview(image2)
        //DEL PASO 5 DE LINEAS
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Función que es mandada a llamar cuando se toca la pantalla
        print("Touches began")
        //DEL PASO 1 DE LINEAS
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Función que se manda a llamar cuando se deja de tocar la pantalla
        print("Touches stopped")
        //DEL PASO 1 DE LINEAS
    }
    
    //Generamos un tap gesture recognizer, como su nombre lo indica, reconoce un toque, es una acción. Lo vinculamos con ctrl y arrastramos abajo de las funciones, de tipo UITapGestureRecognizer.
    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        //Cuando nosotros toquemos la pantalla, se va a generar un UIView de forma programática, probaremos con un image view, crearemos uno.
        
        let location = sender.location(in: self.view) //sender es el objeto de nuestro toque. Lo guardamos para poder trabajar la ubicacion en donde queremos que aparezca la imagen que traeremos a pantalla. Esta variable guarda las coordenadas del toque que se hace a pantalla.
        //DEL PASO 3 DE LINEAS
        
        var imageView = UIImageView(frame: CGRect(x: 100, y: 100, width: 200, height: 300))//x e y se refieren al origen del imageView, todos los origenes de todos los views son la esquina superior izquierda.
        //DEL PASO 1 DE LINEAS

        imageView.image = UIImage(named: "Random-image-15") //Arriba creamos el tamaño del image view (algo así como el marco para poner una imágen), y aquí mandamos a llamar al método encargado de meter una imagen en ese marco.
        //DEL PASO 1 DE LINEAS
        
        //otro método para lo anterior es el siguiente
        imageView = UIImageView(image: UIImage(named: "Random-image-15")) //con este creamos el image view dandole la imagen que queremos de parámetro, entonces el marco se crea automáticamente con las dimensiones necesarias
        //DEL PASO 2 DE LINEAS
        
        
        imageView.frame.origin = CGPoint(x: 100, y: 100) //con este especificamos en donde queremos el origen de la imagen creada, ya que no pudimos especificarlo al crear el marco como en el primer metodo.
        //DEL PASO 2 DE LINEAS
        
        imageView.contentMode = .scaleAspectFill //De memoria por el momento, de este modo cambiamos el aspecto que tiene la imagen en pantalla
        //DEL PASO 3 DE LINEAS
        
        imageView.frame.origin = CGPoint(x: location.x, y: location.y) //con esto, le decimos al imageView con la imagen ya cargada que cuando se haga un toque, aparecerá y encima de eso, aparecerá en las coordenadas del toque.
        //DEL PASO 3 DE LINEAS
        
        //Lo siguiente es un modo de ajustar el frame que ya hicimos
        imageView.frame = CGRect(x: imageView.frame.origin.x, y: imageView.frame.origin.y, width: 200, height: 400)//con ésto le decimos que x e y está en las coordenadas del toque y las dimensiones del marco ya no son automáticas, sino que les damos valor.
        //DEL PASO 4 DE LINEAS
        
        self.view.addSubview(imageView) //con éste método agregamos una imagen a nuestra vista
        
        //Para esconder el teclado al presionar en cualquier otro lugar de la pantalla debemos declarar un tap gesture y añadir el resultado de que ese tap entre en acción.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))//Declaramos un tap gesture cuya ocurrencia manda a llamar a una función
        self.view.addGestureRecognizer(tapGesture) //Se añade el tapGesture
        
    }
    
    @objc func hideKeyboard(){
        view.endEditing(true)//la función hidekeyboard lo que hace es escoder el teclado al terminar de editar (escribir)
    }
    
    //Ahora probaremos con un segmented control, tambien un action porque sólo reacciona cuando lo tocas. DEL PASO 6 DE LINEAS
    @IBAction func selectImage(_ sender: UISegmentedControl) {
        //Este es el segmento que controla la barra segmentada de hasta arrriba. Como sólo toma valores de 0 en adelante, dependiendo de la cantidad de segmentos en la barra, hacemos un switch
        
        //El switch va a ser para cambiar la imagen en pantalla, pero como declaramos las imagenes únicamente dentro de la función 'viewDidLoad' no podemos usarlas aquí, entonces las declaramos al principio, sin ambargo comentamos sus declaraciones en las lineas 34 y 35 porque debemos declararlas para llamarlas en la carga de la app y ademas utilizarlas aquí, entonces deben de estar declaradas, pero accesibles para ambas funciones.
        switch sender.selectedSegmentIndex {
        case 0:
            image1.isHidden = false
            image2.isHidden = true
        case 1:
            image1.isHidden = true
            image2.isHidden = false
        default:
            break
        }
    }
    
    //Generamos en pantalla principal una prueba para hacer log in, ojo que seguimos trabajando encima del proyecto anterior y las cosas siguen activas. DEL PASO 7 DE LINEAS
    @IBAction func logIn(_ sender: UIButton) {
        if userTextfield.text == user && passwordTextfield.text == password{
            //Para llegar a éste paso, primero debemos dar Editor -> Embed In -> Navigation Controller para tener un control de navegacion entre ventanitas. Posteriormente añadimos nuestro segundo View Controller, para conectarlos picamos ctrl en el circulo amarillo del primer view controller al nuevo y ya hecho eso, podemos hacer el código que cambiará de ventana cuando el lo in sea exitoso. DEL PASO 8 DE LINEAS
//            print("Log in exitoso.")
//            performSegue(withIdentifier: "logInSegue", sender: self)
//        }else{
//            print("Usuario y/o contraseña incorrectos.")
//        }
            
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "profileVC")//para esto, debemos nombrar al siguiente view controller desde el storyboard. Picamos el view controller del view que queremos que sea el primero en usar el profileVC, picamos sus opciones y le colocamos el nombre del identificador.
            self.present(nextVC!, animated: true, completion: nil)
    }
    
    //Ahora hacemos una función que se mandará a llamar cuando se ejecute correctamente el segue de camvio de view. DEL PASO 10 DE LINEAS
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Como cambiamos de view y cada view debe tener su view controller, cada que sepamos que cambiaremos de view, debemos hacer el cambio de viewController explícitamente del siguiente modo:
        if segue.identifier == "logInSegue"{
            let nextViewController = segue.destination as! ProfileViewController //Dependiendo del identificador del segue es al view que vamos y al controlador que utilizaremos.
            
            nextViewController.student = mauricio
        }
    }
    
        func register(_ sender: UIButton) {
        print("Register view")
        performSegue(withIdentifier: "registerSegue", sender: self)
    }
    
}

}
