import UIKit

//Agregamos los protocolos para trabajar con imágenes de galería/cámara
//UIImagePickerControllerDelegate se puede agregar en la lista de protocolos aqui abajo o se puede mandar a llamar mediante una extension al final del código (despuesito, pues)
class ProfileViewController: UIViewController, UINavigationControllerDelegate {

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
        
        //Botón de imágen
        let imageButton = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(choosePicture)) //recordar que en la acción, mandamos a llamar una función mediante #selector
        //Colocamos el ícono en el navigation controller
        navigationItem.leftBarButtonItem = imageButton
    }
    
    @objc func choosePicture() {
        //Para seleccionar fotos, necesitamos ayuda de 'Picker' la app de Apple para seleccionar y ver la galería de fotos (realmente nos da una copia), #seguridad.
        let pickerController = UIImagePickerController()
        pickerController.allowsEditing = true //Permite editar la imagen cuando la seleccionas
        pickerController.delegate = self //Es necesaria ésta declaración para manejar el delegate del picker controller. Con ésto mandamos la foto seleccionada; mediante el delegate.
        
        //Se declara un action sheet (tipo de alerta/menu)
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet) //Action Sheet!
        
        //Opción Cámara
        actionSheet.addAction(UIAlertAction(title: "Cámara", style: .default, handler: { (action) in
            pickerController.sourceType = .camera //tipo de fuente de donde obtendremos la imagen
            self.present(pickerController, animated: true, completion: nil)
        }))
        
        //Opción Biblioteca
        actionSheet.addAction(UIAlertAction(title: "Biblioteca", style: .default, handler: { (action) in
            pickerController.sourceType = .photoLibrary
            self.present(pickerController, animated: true, completion: nil)
            //Llevamos la imagen seleccionada de regreso
        }))
        
        //Opción Cancelar
        actionSheet.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        //Se presenta el action sheet
        present(actionSheet, animated: true, completion: nil)
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

extension ProfileViewController: UIImagePickerControllerDelegate{
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]){
        
        guard let image = info[.editedImage] as? UIImage else { return }
        
        imageView.image = image
        
        //Como el picker es un view controller, debemos hacer un dismiss, si no, se queda en pantalla.
        picker.dismiss(animated: true, completion: nil)
    }
}
