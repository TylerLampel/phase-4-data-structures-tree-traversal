class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(id)
    nodes_to_visit = [@root]

       while nodes_to_visit.length > 0
  
         node = nodes_to_visit.shift
        return node if node[:id] == id
      
 
         nodes_to_visit = node[:children] + nodes_to_visit
       end
       nil

  end

#   def breadth_first_traversal(node)
#   result = []
#   nodes_to_visit = [node]

#   while nodes_to_visit.length > 0
#     # 1. Remove the first node from the `nodes_to_visit` array
#     node = nodes_to_visit.shift
#     # 2. Add its value to the result array
#     result.push(node[:value])
#     # 3. Add its children (if any) to the END of the `nodes_to_visit` array
#     nodes_to_visit = nodes_to_visit + node[:children]
#   end

#   result
# end

# def depth_first_traversal(node)
#   result = []
#   nodes_to_visit = [node]

#   while nodes_to_visit.length > 0
#     # 1. Remove the first node from the `nodes_to_visit` array
#     node = nodes_to_visit.shift
#     # 2. Add its value to the result array
#     result.push(node[:value])
#     # 3. Add its children (if any) to the BEGINNING of the `nodes_to_visit` array
#     nodes_to_visit = node[:children] + nodes_to_visit
#   end

#   result
# end

# recursive depth traversal
# def depth_first_traversal(node, result = [])
#   # visit each node (add it to the list of results)
#   result.push(node[:value])

#   node[:children].each do |child|
#     # visit each child node
#     depth_first_traversal(child, result)
#   end

#   result
# end

end