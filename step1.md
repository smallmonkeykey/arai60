# 何も見ずにコード書く
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
  visited = Set.new
  node = head
  i = 0
  while node
    return "tail connects to node index #{i}" if visited.include?(node)
    visited.add(node)
    node = node.next
    i += 1
  end
  "no cycle"
end
```

Given the head of a linked list, return the node where the cycle begins. If there is no cycle, return null
という問題文を忘れて、`Output: tail connects to node index 1`の方を出してしまっていた。
問題をしっかり読んでいきたい。

# 答えを見て以下を書いた
```
def detectCycle(head)
  visited_nodes = Set.new
  node = head
  while node
    return node if visited_nodes.include?(node)
    visited_nodes.add(node)
    node = node.next
  end
  nil
end
```

# フロイドの方法でも書いていく
```
def detectCycle(head)
  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
    if slow == fast
      break
    end
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

衝突したときに`L = kC - X`という関係式が成り立つ。
これを理解するまでに時間がかかった。3日くらい😢

また自分はスペースを開ける癖があるので次のコードはスペースをなくして整えた。
