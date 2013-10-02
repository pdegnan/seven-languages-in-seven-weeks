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
_treeData = {
    'grandpa' => {
        'dad' => {
            'child 1' => {},
            'child 2' => {}
        },
        'uncle' => {
            'child 3' => {},
            'child 4' => {}
        }
    } 
}

class Tree
    attr_accessor :children, :node_name

    def initialize(tree_hash = {}, nodename = false)
        if nodename != false
            @node_name = nodename
        else
            @node_name = 'root'
        end
        @children = []
        tree_hash.each { |key, value|
            @children.push(Tree.new(value, key));
        }
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end
    
    def visit(&block)
        block.call self
    end
end

ruby_tree = Tree.new(_treeData)

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}