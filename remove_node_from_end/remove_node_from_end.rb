# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

n_1 = ListNode.new(1)
n_2 = ListNode.new(2)
n_1.next = n_2

a_1 = ListNode.new(1)
a_2 = ListNode.new(2)
a_1.next = a_2
a_3 = ListNode.new(3)
a_2.next = a_3
a_4 = ListNode.new(4)
a_3.next = a_4

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  return [] if head.next == nil
  node_arr = [head]
  node = head
  while node.next
    node = node.next
    node_arr << node
  end
  if n > 1
  	if node_arr.length > n
  		node_arr[-n - 1].next = node_arr[-n + 1]
  	else 
  		return node_arr[1]
  	end
  else
  	node_arr[-2].next = nil
  end
  head
end

# p remove_nth_from_end(n_1,1)
p remove_nth_from_end(n_1,2)
# p remove_nth_from_end(a_1,2)









