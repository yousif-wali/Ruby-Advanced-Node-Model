class AdvancedNode
  attr_accessor :value, :connections, :metadata

  def initialize(value, metadata = {})
    @value = value
    @connections = []
    @metadata = metadata
  end

  # Connect this node to another node
  def connect(node)
    @connections << node unless @connections.include?(node)
  end

  # Disconnect this node from another node
  def disconnect(node)
    @connections.delete(node)
  end

  # Update metadata for the node
  def update_metadata(key, value)
    @metadata[key] = value
  end

  # Display the node's details
  def display
    puts "Value: #{@value}, Metadata: #{@metadata}, Connections: #{@connections}"
  end
end

# Example Usage
node1 = AdvancedNode.new("Node1", { "color" => "red" })
node2 = AdvancedNode.new("Node2")
node3 = AdvancedNode.new("Node3")

node1.connect(node2)
node2.connect(node3)
node1.connect(node3)

node1.update_metadata("weight", 5)
node2.update_metadata("color", "blue")

[node1, node2, node3].each(&:display)
