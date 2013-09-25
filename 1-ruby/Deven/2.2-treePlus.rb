require	'pp'

class Tree
	attr_accessor :children, :node_name

	def initialize(hash)
		hash.each do |root,child|
			@node_name = root
			@children = []
			child.each { |r,c| children << Tree.new({r => c}) }
		end
	end

	def visit_all(&block)
		visit &block
		children.each { |c| c.visit_all &block }
	end

	def visit(&block)
		block.call self
	end
end


tree_hash = { :grandpa => 
	{ :dad => 
		{ :"child 1" => {} , :"child 2" => {} },
	  :uncle => 
		{ :"child 3" => {} , :"child 4" => {} }
	} 
}

ruby_tree = Tree.new(tree_hash)

puts "Visiting a node"
ruby_tree.visit { |node| puts node.node_name }

puts "Visitng entire tree"
ruby_tree.visit_all { |node| puts node.node_name }