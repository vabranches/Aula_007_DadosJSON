import UIKit

class ViewController: UIViewController {

    //MARK: Propriedades
    var arrayPessoas : [[String : AnyObject]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlJSON = Bundle.main.url(forResource: "dados", withExtension: "json")!
        let JSONDado : Data = try! Data(contentsOf: urlJSON)
        
        do{
            arrayPessoas = try JSONSerialization.jsonObject(with: JSONDado, options: JSONSerialization.ReadingOptions.allowFragments) as![[String : AnyObject]]
        } catch {}
        
        for lista in arrayPessoas{
            print("\(lista)")
        }
        
        print(arrayPessoas[1])

    }



}

