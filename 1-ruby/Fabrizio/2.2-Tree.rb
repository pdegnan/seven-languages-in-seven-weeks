class Tree
  attr_accessor :children, :node_name

  def initialize(hash = {}, nodename = 'root')
    @node_name = nodename
    @children = []
    hash.each do |key, value|
      @children.push(Tree.new(value,key))
    end
    puts @children
  end

  def visit_all(&block)
    puts children.class
    visit &block
    children.each do |c|
      c.visit_all &block
    end
  end

  def visit(&block)
    block.call self
  end
end

hash = {
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

ruby_tree = Tree.new({'hash'=>hash})

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
