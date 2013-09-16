#---
# Excerpted from "Seven Languages in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
#
# http://media.pragprog.com/titles/btlang/code/ruby/tree.rb
#---
class Tree
  attr_accessor :children, :node_name
  
  def initialize(tree_hash={})
    p tree_hash
    @children = []
    return if tree_hash.empty?
    tree_hash.each {
      |n,c|
      @node_name = n
      c.each { |nn, cc| t = Tree.new(cc); t.node_name = nn; @children << t }
    }
  end

  def children(c)
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end
  
  def visit(&block)
    block.call self
  end
end

#ruby_tree = Tree.new( "Ruby", 
#  [Tree.new("Reia"), 
#   Tree.new("MacRuby")] )
family = {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }
ruby_tree = Tree.new family
p ruby_tree

  ## Work in progress --- recursion can be a bitch sometimes
exit
puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}