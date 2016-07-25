// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
//= require bootstrap

$(document).ready(function(){
  console.log("suhhhh");
  $('.whole-page').removeClass("image_background");
  $('.whole-page').removeClass("disppear");
	
	$('.button-start').on("click", function(){

      $('.bye').removeClass("appear");
     $('.bye').addClass("disppear");
     $('.whole-page').addClass("image_background");
    
    



    $('.js-location-modal').modal("show");


  });

  $('.modal').on('hidden.bs.modal', function(){
     $('.bye').removeClass("disappear");
    
    $('.whole-page').removeClass("image_background");
    $('.bye').addClass("appear");

  });

		$('.button-next1').on("click", function(){
		$('.js-location-modal').modal("hide");

		$('.js-activity-modal').modal("show");

          
	});
		$('.button-back1').on("click", function(){
		$('.js-location-modal').modal("hide");

	});

		$('.button-back2').on("click", function(){
		$('.js-activity-modal').modal("hide");

		$('.js-location-modal').modal("show");
	});

		$('.button-next2').on("click", function(){

		$('.js-activity-modal').modal("hide");

		$('.js-time-modal').modal("show");

	});

		$('.button-back3').on("click", function(){
		$('.js-time-modal').modal("hide");

		$('.js-activity-modal').modal("show");
	});
		// $('.button-next').on("click", function(show details){
});

var t;
var seekers = [];

function setup() {
  createCanvas(windowWidth, windowHeight);

  t = new Target();
  for (var i = 0; i < 30; i++) {
    seekers[i] = new Seeker();
  }
}

function draw() {
  background(100);

  t.update();
  t.display();

  for (var i = 0; i < seekers.length; i++) {
    seekers[i].update();
    seekers[i].seek(createVector(t.pos.x, t.pos.y));
    seekers[i].display();

    //seekers[i].seek(createVector(mouseX, mouseY));	
  }

}

function mouseReleased() {
  for (var i = 0; i < seekers.length; i++) {
    var explode = createVector(random(-width, width), random(-height, height));
    console.log(explode);
    explode.mag(10);
    seekers[i].seek(explode);
  }

}

function Seeker() {

  this.pos = createVector(random(width), random(height));
  this.vel = createVector(random(-2, 2), random(-2, 2));
  this.acc = createVector(0, 0);
  this.sz = 10;
  this.maxSpeed = random(5, 8);
  this.maxForce = random(0.025, 0.75);
  this.trail = [];

  this.display = function() {
    fill(255);
    ellipse(this.pos.x, this.pos.y, this.sz, this.sz);

    for (var i = 0; i < this.trail.length; i++) {
      var pos = this.trail[i];

      noStroke();
      fill(200, i);
      ellipse(pos.x, pos.y, this.sz, this.sz);
    }
  }

  this.update = function() {
    this.vel.add(this.acc);
    this.pos.add(this.vel);
    this.acc.mult(0);

    if (this.trail.length > 50) {
      this.trail.splice(0, 1);
    }

    var v = createVector(this.pos.x, this.pos.y);
    this.trail.push(v);
  }

  this.applyForce = function(force) {
    this.acc.add(force);
  }
  this.seek = function(target) {
    var desired = p5.Vector.sub(target, this.pos);
    desired.setMag(this.maxSpeed);

    var steering = p5.Vector.sub(desired, this.vel);
    steering.limit(this.maxForce);
    this.applyForce(steering);
  }
}

function Target() {
  this.pos = createVector(width/2, height/2);
  this.newPos = createVector(width/2, height/2); 
  this.velX = 0.01;
  this.velY = 0.01;

  this.display = function() {
    fill(255, 0, 0);
    ellipse(this.pos.x, this.pos.y, 30, 30);

    if (frameCount % 75 === 0) {
      this.moveTarget();
    }
  }

  this.update = function() {
    this.pos.x = lerp(this.pos.x, this.newPos.x, this.velX);
    this.pos.y = lerp(this.pos.y, this.newPos.y, this.velY);
  }
  this.moveTarget = function() {
    this.newPos = createVector(random(30, width - 30), random(30, height - 30));
    this.velX = random(0.0085, 0.05);
    this.velY = random(0.0085, 0.05);
  }
}
