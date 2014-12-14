mobile-sensor
=============

Mobile sensor related resarch by HTML5

### [W3C Sensor API][2]
<table class="simple">
	<thead>
		<tr>
		<th>DOM Sensor Event</th>
		<th>Sensor Type</th>
		<th>Data Type</th>
		<th>Units</th></tr>
	</thead>
	<tbody>
		<tr><td>devicetemperature</td><td>A ambient temperature sensor</td><td>double</td><td>degree Celsius (ºC)</td></tr>
		<tr><td>devicepressure</td><td>A pressure sensor</td><td>double</td><td>kiloPascal (kP)</td></tr>
		<tr><td>devicehumidity</td><td>A releative humidity sensor</td><td>double</td><td>percentage</td></tr>
		<tr><td>devicelight</td><td>A light sensor</td><td>double</td><td>Lux</td></tr>
		<tr><td>devicenoise</td><td>A ambient noise sensor</td><td>double</td><td>dbA</td></tr>
		<tr><td>deviceproximity</td><td>A proximity sensor</td><td>double</td><td>centimetres (cm)</td></tr>
	</tbody>
</table>

### Platform

* IOS

	1. Proximity sensor:- This sensor determines how close the iPhone is to your face. This sensor helps the iPhone turn off its screen automatically whenever user hold the phone up to your ear. only available in iPhone. 

	2. Motion sensor/accelerometer:- This sensor enables the device to automatically switch from landscape to portrait mode and vice-versa. 

	3. Ambient Light sensor:- This sensor determines how much light is available in the surrounding area of device and automatically adjust the brightness of the screen in order to conserve battery life. 

	4. Magnetometer:- It is used to measure the strength and/or direction of the magnetic field in the surrounding of the device. 

	5. Gyroscopic sensor:- When gyroscope is combined with accelerometer, the combination gives the devices six axes on which the it can operate. This is designed to make them more sensitive, responsive, and powerful for gaming.


* [Android (TBD) ][1]

	1. Motion sensors
		These sensors measure acceleration forces and rotational forces along three axes. This category includes accelerometers, gravity sensors, gyroscopes, and rotational vector sensors.
	2. Environmental sensors
		These sensors measure various environmental parameters, such as ambient air temperature and pressure, illumination, and humidity. This category includes barometers, photometers, and thermometers.
	3. Position sensors
		These sensors measure the physical position of a device. This category includes orientation sensors and magnetometers.

* Articles
	- [HTML5 Device API Related ISSUE][4]
	- [IOS Sensor Review][5]
	- [The HTML5 Speech Recogntion API][6]

* Library
	- https://github.com/ehzhang/sense-js

* Others
	- [JAVASCRIPT APIS CURRENT STATUS][3]

[1]: http://developer.android.com/guide/topics/sensors/sensors_overview.html
[2]: https://dvcs.w3.org/hg/dap/raw-file/tip/sensor-api/Overview.html
[3]: http://www.w3.org/standards/techs/js#w3c_all
[4]: http://blog.csdn.net/hfahe/article/details/7338032
[5]: http://www.computerworld.com/article/2476591/healthcare-it/latest-ios-8-beta-shows-apple-s-sensor-sensibility.html
[6]: http://shapeshed.com/html5-speech-recognition-api/