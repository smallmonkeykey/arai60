# 整えて、1０分以内にエラーを出さずに3回続けて書く

```
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
def detectCycle(head)
  slow = head
  fast = head
  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
    break if slow == fast
  end
  return nil if fast.nil? || fast.next.nil?

  fast = head
  while fast != slow
    fast = fast.next
    slow = slow.next
  end
  return fast
end
```
