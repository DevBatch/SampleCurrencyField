# SampleCurrencyField
This text field lets you take input as decimals.It will discard all the characters except decimals. User just have to specify currency symbol and then the textfield will display text accordingly.

## Installation
Drag and drop CurrencyTextField in your project and subclass UITextField with this class

## Usage
```ruby
 @IBOutlet weak var textField: CurrencyTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.currencySymbol = "£"
        
   }
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
   func textFieldDidEndEditing(_ textField: UITextField) {
        print("Final value is : ",String(textField.text?.integer as! Int))
    }
```
## Author

muhammadnayabbutt, nayabbutt1@gmail.com
