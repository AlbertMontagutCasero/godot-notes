# godot-notes

### 2d Project Setup
in project setting you must set up ur project for a correct 2d
![](https://i.ibb.co/MBzqccY/image.png)

#### Pixel Art
![](https://i.ibb.co/gtDngrB/image.png)

---

### Global scope:
In Godot you can check the global scope, vars in the following path. 

![global scope](https://i.ibb.co/ZGYXppj/image.png)

----

### PhysicsBody

#### 2d
Godot offers three kinds of physics bodies, grouped under the PhysicsBody2D object type:

**StaticBody2D**: A static body is one that is not moved by the physics engine. It participates in collision detection, but does not move in response to the collision. This type of body is most often used for objects that are part of the environment or do not need to have any dynamic behavior, such as walls or the ground.

**RigidBody2D**: This is the physics body in Godot that provides simulated physics. This means that you don't control a RigidBody2D directly. Instead, you apply forces to it (gravity, impulses, and so on) and Godot's built-in physics engine calculates the resultant movement, including collisions, bouncing, rotating, and other effects.

**KinematicBody2D**: This body type provides collision detection, but no physics. All movement must be implemented in code, and you must implement any collision response yourself. Kinematic bodies are most often used for player characters or other actors that require arcade-style physics rather than realistic simulation.


> Note : Area2D nodes can also be used to affect rigid body physics by using the Space Override property. Custom gravity and damping values will then be applied to any bodies that enter the area.

---

### Area

#### 2d
