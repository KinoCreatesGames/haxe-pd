package pathfinding;

@:native('playdate.pathfinder.node')
extern class Node {
	/**
	 * Adds a new connection between nodes.
	 * * node: The node the new connection point to.
	 * * weight: Weight for the new connection. Weights affect the
	 * path the A* algorithm will solve for. A longer, lighter-weighted
	 * path will be chosen over a shorter heavier path, if available.
	 * * addReciprocalConnection: if true, a second connection will
	 * be created with the same weight in the opposi8te direction.
	 * @param node 
	 * @param weight 
	 * @param addReciprocalConnection 
	 */
	public function addConnection(node:Node, weight:Float, addReciprocalConnection:Bool):Void;

	/**
	 * Adds a new connection to each node in the nodes array.
	 * * nodes: An array of nodes which the new connections will
	 * point to.
	 * * weights: An array of weights for the new connections. Must be 
	 * of the same length as the nodes array. Weights affect the
	 * path the A* algorithm will solve for. A longer, lighter-weighted
	 * path will be chosen over a shorter heavier path, if available.
	 * * addReciprocalConnections: if true, connections will also be
	 * added in the reverse direction for each node.
	 * @param nodes 
	 * @param weights 
	 * @param addReciprocalConnections 
	 */
	public function addConnections(nodes:Array<Node>, weights:Array<Float>, addReciprocalConnections:Bool):Void;

	/**
	 * Returns an array of nodes that have been added as connections
	 * to this node.
	 * @return Array<Node>
	 */
	public function connectedNodes():Array<Node>;

	/**
	 * Removes a connection to node, if it exists.
	 * If `removeReciprocal` is true the reverse connection will
	 * also be removed, if it exists.
	 * @param node 
	 * @param removeReciprocal 
	 */
	public function removeConnection(node:Node, ?removeReciprocal:Bool):Void;

	/**
	 * Removes all connections from the calling node.
	 * 
	 * If `removeIncoming` is true, all connections from other
	 * nodes to the calling node are also removed. False by default. 
	 * Please note: this can significantly increase the time this
	 * functions as  it requires a full search of the graph.
	 * - O(1) vs O(n)).
	 * @param removeIncoming 
	 */
	public function removeAllConnections(?removeIncoming:Bool):Void;

	/**
	 * Sets the x and y values for the node.
	 * @param x 
	 * @param y 
	 */
	public function setXY(x:Float, y:Float):Void;
}
