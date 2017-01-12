def sum_of_left_leaves(root)
	if root
	sum_of_left_leaves(root.left) + sum_of_left_leaves(root.right)
	end
	return root.val || 0
end