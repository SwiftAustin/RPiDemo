
import SwiftyGPIO
import Foundation
import Glibc

var previousButtonValue=2


// NOTE: For the button to work at all, you have to 
//  run `wiringPi/gpio/gpio mode 26 up` first.
//  OR put a pull-up resistor between Hot and PIN 12

let gpioMgr = SwiftyGPIO.GPIOs(for:.RaspberryPi2)
//print ("got gpioMgr \(gpioMgr)")
guard let led = gpioMgr[.P17] else { print("Could not access pin17!");exit(2); }
//print ("got pin 17");
led.direction = .OUT
//print ("set pin 17 to output mode");
guard let button = gpioMgr[.P12] else { print("Could not access pin12!");exit(2); }
//print ("got pin 12");
button.direction = .IN
button.value=0
//print ("set pin 12 to input mode");

button.onChange { button in
	if (button.value != previousButtonValue) {
		previousButtonValue=button.value
		//print(button.value) 
		led.value=button.value == 0 ? 1 : 0
	}
}

_ = Timer.scheduledTimer(withTimeInterval:50000, repeats: false) { timer in
}
_ = RunLoop.current().run(mode:.defaultRunLoopMode, before:Date(timeIntervalSinceNow: 100))
