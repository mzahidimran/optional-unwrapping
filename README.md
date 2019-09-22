# Optional Unwrapping Easy Way

Unwrapping Optionals in swift sometimes become problem when you implementing third party APIs with dozens of Optional values in it.

Rather than implementing chain of 

`if let val = data.string {
	self.titleLabel.text = val
}`

you may use 

`data.string ->>  self.titleLabel.text`


If having computed properties like

`if let val = data.string {
	self.titleLabel.text = "Welcome " + val
}`

you may use optional closure

`data.string ->> { self.titleLabel.text = "Welcome " + $0}`

#How to install

Just drag swift file to your project and start using optional mapper operator 