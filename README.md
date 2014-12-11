#### The Rabbit and the Cannon

##Coding Problem:
 
There is a player with a cannon at position 0 along an axis, and there is a rabbit at some unknown initial position x_0 on that axis.
The player and the (computer-controlled) rabbit take turns.

The player tries to hit the rabbit. In each player turn the player can set the firing angle alpha of the cannon and then fire it. The nozzle velocity v of the cannon is fixed.
The cannon ball hits the ground at this distance x_impact from the cannon:
x_impact = (2cos(alpha)sin(alpha)v^2)/g
where g = 9.81 m/s^2 is the earth's gravitational acceleration.
In each rabbit turn the rabbit moves one step (of some fixed size m) to the right or to the left with equal probability.
The game goes on until the cannon ball hits the ground within a distance d of the rabbit's current position.
Write a game that lets the user play until he hits the rabbit.

You can pick values for the fixed parameters in this problem.



##How to play the game:

git clone the repo
then you can run the game by just running ````./cannon_rabbit```` on the root directory of the project.

The game is accompanied with some tests you can run them in root directory by ````rspec spec```` make sure you have rspec 2.0 gem.

you can install it by ````gem install rspec```` on your current ruby
