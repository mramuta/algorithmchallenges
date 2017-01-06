class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end
root = TreeNode.new('a')
root.left = TreeNode.new('b')
root.right = TreeNode.new('c')
p root

def invert_tree(root)
   tempnodeleft = root.left if root
   tempnoderight = root.right if root
   root.left =  tempnoderight if tempnoderight
   root.right = tempnodeleft if tempnodeleft
   invert_tree(root.right) if root
   invert_tree(root.left) if root
   root
end

invert_tree(root)
p invert_tree([])
p root

# input
# [4,2,7,1,3,6,9]
# Output:
# [4,2,7,1,3,6,9]
# Expected:
# [4,7,2,9,6,3,1]
