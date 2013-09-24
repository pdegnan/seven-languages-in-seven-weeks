class Tree
    attr_accessor :children, :node_name

    def initialize name, subordinates
        # Define children as an array and push the children's names from the keys
        # of the subordinates argument which replaces the old children array argument.
        # Does it recursively to travel down a nested array.
        @children = []
        subordinates.keys.each { |k| @children.push Tree.new(k, subordinates[k]) }
        @node_name = name
    end
    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end
    def visit(&block)
        block.call self
    end 
end

ruby_tree = Tree.new "Charles", {
    "Scott" => {
        "Warren" => {},
        "Hank" => {},
        "Jean" => {},
        "Bobby" => {}
    },
    "Storm" => {
        "Wolverine" => {},
        "Colossus" => {},
        "Nightcrawler" => {},
        "Thunderbird" => {}
    }
}
    

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}