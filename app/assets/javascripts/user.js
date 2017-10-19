// js model object
function User(id, email, level, avatar) {
	this.id = id
	this.email = email
	this.level = level
	this.avatar = avatar
}

// js model prototype
User.prototype.levelUp = function() {
  Event.observe(this.level,'change', function() {
    alert("You've leveled up!");
  });
}

User.prototype.leveldown = function() {
  Event.observe(this.level,'change', function() {
    alert("You've leveled down!");
  });
}
