# Check offical documentation about the following 3 methods in Enumerable.
# Make sure that you understand what they are doing.
# description of #all? method
#  description of #any? method
#  description of #filter method
#  Create a class MyList that has an instance variable @list.
# In MyList implement a method #each that yields successive members of @list
# and uses the MyEnumerable module.
#  Create a module MyEnumerable that implements the following methods
# (they should have the same funcionality as methods in Enumerable):
# all?
# any?
# filter#
# Each class and module should has a separate .rb file.
# Verify your solution:

module MyEnumerable
  def all?
    return true unless block_given?

    each { |e| return false unless yield(e) }
    true
  end

  def any?
    return true unless block_given?

    each { |e| return true if yield(e)}
    false
  end
end
