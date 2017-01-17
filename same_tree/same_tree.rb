# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}

p_node_1 = TreeNode.new(nil)
q_node_1 = TreeNode.new(nil)

p_node_2 = TreeNode.new(0)
q_node_2 = TreeNode.new(nil)

def is_same_tree(p, q)
	if p
		is_same_tree()
end

p is_same_tree(p_node_1,q_node_1)
p is_same_tree(p_node_2,q_node_2)