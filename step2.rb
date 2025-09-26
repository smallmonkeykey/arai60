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
  visited_node = Set.new
  node = head

  while node
    return true if visited_node.include?(node)
    visited_node.add(node)
    node = node.next
  end

  false
end

#他の方のコードを参考にしながら、自分でもコードを書いてみました。
#フロイドの解法は「手品」と表現されていたので、今回は Set を使った解法を試しています。
#Set というものを今回初めて知ったのですが、内部で Hash が使われていて、要素が含まれているかどうかを高速に調べられると分かりました。
#そこで少し心配になったのですが、自分の中で「要素があるかどうかを調べたい＝Set を使おう」という考え方を学ぶ問題になってしまっている気がしています。
#本来は複数の選択肢の中から Set を選べるのが理想だと思うのですが、現状は知識が少なく、そこまでの発想には至っていません。
#短絡的に考えてしまっている気がしており、このあたりについてご意見を伺いたいです

#多くの人が変数名を`visited`だけにしており、`visited_node`と命名するより`visited`とする理由を教えて欲しいです。
#(多くの方が使われているので`visited`が良いとは思うのですが、理解していないため、あえて`visited_node`と書いています)
