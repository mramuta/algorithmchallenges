# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

list_node_1 = ListNode.new(1)
list_node_1_1 = ListNode.new(1)
# list_node_1.next = list_node_1_1
# list_node_2 = ListNode.new(2)
# list_node_1_1.next = list_node_2
# list_node_3 = ListNode.new(3)
# list_node_2.next = list_node_3

list_node_1_1_1 = ListNode.new(1)
list_node_1_1_1.next = list_node_1_1
list_node_1_1.next = list_node_1
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
	if head && head.next
		if head.next.val == head.val
			if head.next.next
				head.next = head.next.next
			else
				head.next = nil
			end
			delete_duplicates(head)
		else
			delete_duplicates(head.next)
		end
	end 
	head
end

p delete_duplicates(list_node_1)