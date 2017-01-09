
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

list_node_1 = ListNode.new(1)
list_node_2 = ListNode.new(2)
list_node_1.next = list_node_2
list_node_3 = ListNode.new(3)
list_node_2.next = list_node_3
list_node_4 = ListNode.new(4)
list_node_3.next = list_node_4

node_0 = ListNode.new(0)
node_1 = ListNode.new(1)
node_0.next = node_1


# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
	until !node.next
		node.val = node.next.val
		node.next = node.next
		break if !node.next.next
		node = node.next
	end
	node.next = nil
end

delete_node(list_node_3)
p list_node_1

delete_node(node_0)
p node_0