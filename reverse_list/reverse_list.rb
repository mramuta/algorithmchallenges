# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
	node = nil
	if head
		if head.next
			while head
				head_next = head.next
				head.next = node
				node = head
				head = head_next if head_next
			end
		end
	end
	head
end