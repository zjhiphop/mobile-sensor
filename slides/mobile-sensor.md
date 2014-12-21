title: HTML5 传感器
speaker: zjhiphop
url: https://github.com/zjhiphop/mobile-sensor
transition: cards
files: /js/demo.js,/css/demo.css

[slide]

# Device传感器和实用技术
## 演讲者：zjhiphop

[slide]

# 传感器 {:&.flexbox.vleft}
## 动作
## 环境
## 音频
## 视频

[slide]
# 动作
* 陀螺仪
* 加速计
* 距离传感器

[slide]
## 陀螺 - 二维
回转效应：陀螺环绕着固定的转轴不停地旋转
![二维陀螺](/img/2d-gyro.jpg "二维陀螺")

[slide]
## 陀螺 - 三维
![三维陀螺](/img/3d-gyro.gif "三维陀螺")

[slide]
## 代码
```
	// http://www.w3.org/2005/10/Process-20051014/tr.html#RecsWD

	// Check to make sure the browser supprots DeviceOrientationEvents
	if (window.DeviceOrientationEvent) {
	  // Create an event listener
	  window.addEventListener('deviceorientation', function(event) {
	      // Get the left-to-right tilt (in degrees).
	    var tiltLR = event.gamma;

	    // Get the front-to-back tilt (in degrees).
	    var titleFB = event.beta;

	      // Get the direction of the device (in degrees).
	    var direction = event.alpha;


	   	$('.l2r').innerText = tiltLR;
	   	$('.f2b').innerText = titleFB;
	   	$('.dir').innerText = direction;

	  });
}
```

[slide]
## W3C API

<img src="/img/a-rotation.png" width="40%">
<img src="/img/b-rotation.png" width="40%">

[slide]
## 案例：水平仪

[slide]
## 案例：iOS桌面

[slide]
重力感应 - 加速计 （摇晃程度）  
acceleration or accelerationIncludingGravity

[slide]
代码 - 摇一摇
```
var color = new Array('#fff', '#ff0', '#f00', '#000', '#00f', '#0ff');  
if(window.ondevicemotion) {  
	var speed = 25;  
	var x = y = z = lastX = lastY = lastZ = 0;  
	window.addEventListener('devicemotion', function(){  
	    var acceleration =event.accelerationIncludingGravity;  
	    x = acceleration.x;  
	    y = acceleration.y;  
	    if(Math.abs(x-lastX) > speed || Math.abs(y-lastY) > speed) {  
	        document.body.style.backgroundColor = color[Math.round(Math.random()*10)%6];  
	    }  
	    lastX = x;  
	    lastY = y;  
}, false);  
```

[slide]
网球游戏  
![网球](/img/motion-tenis.png "网球")

[slide] 
## 距离传感器
案例： 
接电话时，将手机靠近脸部，屏幕会变暗

[slide]
代码
```
<script type="text/javascript">
	var $ = function(sel) { 
		return document.querySelector(sel);
	}

	// An event listener for a DeviceProximityEvent.
	window.addEventListener('deviceproximity', function(event) {
	    // The maximum distance the sensor covers (in cm).
	    var max = event.max;

	    // The minimum distance the sensor covers (in cm).
	    var min = event.min;

	    // The device proximity (in cm).
	    var proximity = event.value;

	    $('.min').innerText = min;
	    $('.max').innerText = max;
	    $('.curr').innerText = proximity;
	});

	// An event listener for a UserProximityEvent.
	window.addEventListener('userproximity', function(event) {
	    if (event.near) {
	        // Do something.
	        $('.user-action').innerText = "closing to";
	    } else {
	        // Do something else.
	        $('.user-action').innerText = "far away";
	    }
	});
</script>
```

[slide]
# 环境
* GPS
* 磁力计
* 光线传感器
* 气压传感器
* 气温传感器
* 湿度传感器

[slide]
案例：指南针  
![指南针](/img/compass.png "指南针")

[slide]
案例：地理位置
代码：
```
<section>
	Your current location is:<br>
	latitude: <span class="latitude"></span><br>
	longitude: <span class="longitude"></span>
</section>
<script type="text/javascript">
	// Get the location.
	navigator.geolocation.getCurrentPosition(function(position) {
	    // Get the positioning coordinates.
	    var lat = position.coords.latitude;
	    var lon = position.coords.longitude;

	    // Do something interesting...
	   	document.querySelector('.latitude').innerText = lon;
	   	document.querySelector('.longitude').innerText = lat;
	});
</script>
```

[slide]
案例：导航  
传感器组合： GPS ＋ 磁力计  

[slide]
案例：智能感光  

```
window.addEventListener('devicelight', function(event) {
		    // Get the ambient light level in lux.
		    var lightLevel = event.value;
		    document.querySelector('.light-level').innerText = lightLevel;
		});
```

[slide] 
CSS light-level  
```
<!-- http://dev.w3.org/csswg/mediaqueries4/#mf-environment -->
<style type="text/css">
	@media (light-level: normal) {
		p {
			background: grey; color: #333;
		}
	}

	@media (light-level: dim) {
		p {
			background: red; color: #ccc;
		}
	}

	@media (light-level: washed) {
		p {
			background: green; color: #white;
		}
	}
</style>
```

[slide]
## 其他
* 气压传感器 - 海拔 (devicepressure)
* 温度 (devicetemperature)
* 湿度 (devicehumidity)

[slide]
# 音频
* 麦克风
* 扬声器

[slide]
案例：咻一咻  
![咻一咻](/img/xiu.jpg "咻一咻")

[slide]
案例：吹一吹  
![吹一吹](/img/blow.jpg "吹一吹")

[slide]
代码：
```
	<script type="text/javascript">
		// An event listener for a DeviceProximityEvent.
		window.addEventListener('devicenoise', function(event) {
			console.log('devicenoise changed: ', event);
		});
	</script>
```
[slide]
案例： siri  
![siri](/img/siri.png "siri")

[slide]
代码：
```
<p>
	API: 
	<span class="result"></span>
</p>
<p>
	x-webkit-speech: 
	<input type="text" x-webkit-speech />
</p>
<script type="text/javascript">
	var recognition = new webkitSpeechRecognition();

		recognition.continuous = true;
		recognition.interimResults = true;
		recognition.lang = "en-GB";

		recognition.onresult = function(event) { 
		  console.log(event);

		  document.querySelector('.result').innerText = JSON.stringify(event.results);
		}
		recognition.start();
</script>
```

[slide]
# 视频
* 摄像头
* 显示器

[slide]
试衣间  
![试衣间](/img/try-room.jpg "试衣间")

[slide]
试衣间  
<img src="/img/try-ware.png">
<img src="/img/try-ware-online.png">

[slide]
案例： [肤色识别][http://caowenhao.sinaapp.com/]

[slide]
案例： 虚拟现实(VR)  
![虚拟现实](/img/visual-r.gif "虚拟现实")

[slide]
案例： 增强现实(AR)  
![增强现实](/img/ar.jpg "增强现实")

[slide]
代码：
```
<video autoplay width="100%" height="500px"></video>
<script type="text/javascript">
'use strict';
/*
Web RTC Resource: 
	https://docs.google.com/document/d/1idl_NYQhllFEFqkGQOLv8KBK8M3EVzyvxnKkHl4SuM8/edit
*/

// variables in global scope so available to console
var video = document.querySelector('video');
var constraints = {
  audio: false,
  video: true
};

navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia ||
  navigator.mozGetUserMedia;

function successCallback(stream) {
  window.stream = stream; // stream available to console
  if (window.URL) {
    video.src = window.URL.createObjectURL(stream);
  } else {
    video.src = stream;
  }
}

function errorCallback(error) {
  console.log('navigator.getUserMedia error: ', error);
}

navigator.getUserMedia(constraints, successCallback, errorCallback);
</script>
```

[slide]
案例：webrtc chat (web socket + video)
http://localhost:3002/test

[slide]
# 其它
* 电池
* 振动
* Web NFC

[slide]
案例： 电池电量
```
<script type="text/javascript">
	var $ = function(sel) {
		return document.querySelector(sel);
	}

	var text = function(sel, text) {
		$(sel).innerText = text;
	}
	navigator.getBattery().then(function(battery) {
		// Get the current power level.
		text('.level',battery.level);

		// Get the charging status (boolean).
		text('.charge-status',battery.charging);

		// Find out how long until the battery is charged.
		text('.charge-time',battery.chargingTime);

		// Find out how long until the battery is empty.
		text('.discharge-time',battery.dischargingTime);
	});

</script>
```

[slide]
案例：振动提醒

```
	<script type="text/javascript">
		// Vibrate for 1 second (1000 milliseconds).
		navigator.vibrate(1000);

		// Vibrate in sequence.
		navigator.vibrate([500, 250, 500]);
	</script>
```

[slide]
案例：web nfc通信
```
<script type="text/javascript">
	// http://www.w3.org/TR/nfc/
	var hello = new NDEFRecordText("hello world", "en-US", "UTF-8");

	navigator.nfc.ontagfound = function(e) {
	    window.console.log('NFC Tag found!');
	    var tag = e.tag;
	    tag.writeNDEF(new NDEFMessage([hello]));
	}

	navigator.nfc.startPoll().catch(
	  function(e) {
	    window.console.error(e);
	  });
</script>
```

[slide]
iOS 兼容性  
![iOS 兼容性](/img/ios-compatible-table.jpeg "iOS 兼容性")

[slide]
[W3C Device API][http://www.w3.org/2009/dap/]
![W3C Device API](/img/w3c-device-api.png "W3C Device API")

