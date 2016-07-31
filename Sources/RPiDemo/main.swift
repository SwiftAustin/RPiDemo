
import SwiftyGPIO
import Glibc

let gpioMgr = SwiftyGPIO.GPIOs(for:.RaspberryPi2)
//print ("got gpioMgr \(gpioMgr)")
guard let gp = gpioMgr[.P17] else { print("Could not access pin!");exit(2); }
//print ("got pin 17");
gp.direction = .OUT
//print ("set pin 17 to output mode");

for i in 0..<10000 {
	//print ("about to toggle pin value")
	gp.value = i % 2
	//print ("about to sleep for a quarter sec")
	usleep(250*1000)
} 
