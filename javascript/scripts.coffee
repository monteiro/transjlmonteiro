---
---

window.onload = () ->
	# Banner Canvas
	canvas = document.getElementById('canvas')
	
	# Points A and B
	points = canvas.getContext('2d')
	
	## Variables
	edge = 100
	radius = 30
	startAngle = 0.82 * Math.PI
	endAngle = 2.18 * Math.PI
	counterClockwise = false
	x = canvas.width / 4
	y = canvas.height / 4
	
	## Fill Style
	points.fillStyle = 'white'
	## Text Style
	points.font = '20pt Helvetica'
	points.textAlign = 'center'

	## Point A Arc
	points.beginPath()
	points.moveTo(edge, y+55)
	points.arc(edge, y, radius, startAngle, endAngle, counterClockwise)
	points.fill()
	points.closePath()
	
	## Point B Arc
	points.beginPath()
	points.moveTo(canvas.width-edge, y+55)
	points.arc(canvas.width-edge, y, radius, startAngle, endAngle, counterClockwise)
	points.fill()
	points.closePath()
	
	## Draw Text
	points.fillStyle = '#447744'
	points.fillText('A', edge, y+10)
	points.fillText('B', canvas.width-edge, y+10)
	
	
	# Hubs Context
	hubs = canvas.getContext('2d')
	
	# save state
	hubs.save();

	# translate context
	hubs.translate(canvas.width / 2, canvas.height / 2);

	# scale context horizontally
	hubs.scale(2, 0.5);

	# draw circle which will be stretched into an oval
	hubs.beginPath();
	hubs.arc(-canvas.width / 4 + edge / 2, 2*y, radius, 0, 2 * Math.PI, false);
	hubs.arc(canvas.width / 4 - edge / 2, 2*y, radius, 0, 2 * Math.PI, false);

	# restore to original state
	hubs.restore();

	# apply styling
	hubs.fillStyle = 'rgba(0,0,0,0.1)';
	hubs.fill();
	

	# Truck Context
	animated = canvas.getContext('2d')

	animated.lineWidth = 5
	animated.strokeStyle = '#fff'
	animated.lineCap = 'round'
	
	line_x = canvas.width / 2 - 80
	line_y = canvas.height / 2 + 20
	
	animated.beginPath()
	animated.moveTo(line_x,line_y)
	animated.lineTo(line_x-50,line_y)
	animated.stroke()
	animated.closePath()
	animated.beginPath()
	animated.moveTo(line_x,line_y-20)
	animated.lineTo(line_x-40,line_y-20)
	animated.stroke()
	animated.closePath()
	animated.beginPath()
	animated.moveTo(line_x,line_y+20)
	animated.lineTo(line_x-40,line_y+20)
	animated.stroke()
	animated.closePath()
	
	imageObj = new Image()
	imageObj.onload = () -> animated.drawImage(imageObj, 2*x-edge-10 / 2, y-15, 200, 200)
	imageObj.src = 'assets/images/noun_29471_cc.svg'
	
	

	# Banner XS
	canvas_xs = document.getElementById('canvas-xs')
	truck_xs = canvas_xs.getContext('2d')
	
	truck_xs.lineWidth = 5
	truck_xs.strokeStyle = '#fff'
	truck_xs.lineCap = 'round'
	
	line_x = canvas_xs.width / 2 -20
	line_y = canvas_xs.height / 2
	
	truck_xs.beginPath()
	truck_xs.moveTo(line_x,line_y)
	truck_xs.lineTo(line_x-50,line_y)
	truck_xs.stroke()
	truck_xs.closePath()
	truck_xs.beginPath()
	truck_xs.moveTo(line_x,line_y-20)
	truck_xs.lineTo(line_x-40,line_y-20)
	truck_xs.stroke()
	truck_xs.closePath()
	truck_xs.beginPath()
	truck_xs.moveTo(line_x,line_y+20)
	truck_xs.lineTo(line_x-40,line_y+20)
	truck_xs.stroke()
	truck_xs.closePath()
	
	imageObj = new Image()
	imageObj.onload = () -> truck_xs.drawImage(imageObj, canvas_xs.width / 3, 0, 200, 200)
	imageObj.src = 'assets/images/noun_29471_cc.svg'