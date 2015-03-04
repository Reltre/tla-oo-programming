#1 
#We create an object by calling the new method on that class.
class Stuff
end

my_stuff = Stuff.new

#2 
=begin
A module is a group of methods and variables that we may want
to reuse in more than one class.  You use a module by including 
it in the class definition.  "include 'module name'".
It is different from a class in that it cannot be instantiated.
=end

module Things
end

class Extras
  include Things
end

extras = Extras.new
