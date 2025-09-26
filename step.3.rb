# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  visited = Set.new
  node = head

  while node
    return true if visited.include?(node)
    visited.add(node)
    node = node.next
  end
  false
end
