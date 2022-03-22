package graph;

import lua.Table;

@:native('playdate.pathfinder.graph')
extern class Graph {
	/**
	 * Returns a new empty `graph` object.
	 * 
	 * If node count is supplied, that number of nodes will
	 * be allocated and added to the graph. Their IDs will be
	 * set from 1 to `nodeCount`.
	 * 
	 * `coordinates` if supplied, should be a table containing tables
	 * of x, y values, indexed by node IDs. For example,
	 * `{{10, 10}, {50, 30}, {20, 100}} `.
	 * @param nodecount 
	 * @param coordinates 
	 */
	public function new(?nodecount:Int, ?coordinates:Table<Int, Table<Float, Float>>);

	/**
	 * Convenience function that returns a new `graph` object containing 
	 * nodes for each grid position, even if not connected to any other 
	 * nodes.
	 * 
	 * This allows for easier graph modifcation once the graph is 
	 * generated. Weights for connections between nodes
	 * are set for 10 for horizontal and vertical connections and 
	 * 14 for diagonal connections (in included), as this tends to
	 * produce nicer paths than using uniform weights. 
	 * 
	 * Nodes have 
	 * their indexes set from 1 to width * height, and have their
	 * x, y values set appropriately for node's position.
	 * @param width 
	 * @param height 
	 * @param allowDiagonals 
	 * @param includedNodes 
	 * @return Graph
	 */
	public function new2DGrid(width:Float, height:Float, ?allowDiagonals:Bool, ?includedNodes:Array<Float>):Graph;

	/**
	 * Returns the first node found with coordinates matching
	 * x,y, after removing it from the graph and removing
	 * all connections to and from the node.
	 * @param x 
	 * @param y 
	 */
	public function removeNodeWithXY(x:Float, y:Float):Node;

	/**
	 * Returns the first node found in graph with a matching
	 * id, or nil if no such node is found.
	 * @param id 
	 */
	public function removeNodeWithID(id:Int):Node;

	/**
	 * Returns the first node found in the graph with a matching id, 
	 * or nil if no such node is found.
	 * @param id 
	 * @return Node
	 */
	public function nodeWithID(id:Int):Node;

	/**
	 * Returns the first node found in the graph with matching
	 * x and y values, or nil if no such node is found.
	 * @param x 
	 * @param y 
	 * @return Node
	 */
	public function nodeWithXY(x:Float, y:Float):Node;

	/**
	 * `connections` should be a table of array-style tables. The
	 * keys of the outer table should correspond to node IDs, while the
	 * inner array should be a series if connection node ID and weight
	 * combinations that will be assigned to that node. 
	 * For example, `{[1] = {2, 10, 3, 12}, [2]={1, 20}}` will create a
	 * connection from node ID 1 to node ID 2 with a weight of 10,
	 * and connection to node ID 3 with a weight of 12, and so on
	 * for the other entries.
	 * 
	 * @param connections 
	 */
	public function addConnections(connections:Table<Int, Array<Float>>):Void;

	/**
	 * Removes all connections from the matching node.
	 * 
	 * If `removeIncoming` is true, all connections from the other nodes to
	 * the calling node are also removed. False by default. Please note:
	 * this can significantly increase the time this function
	 * takes as it requires a full search of the graph.
	 * - O(1) vs O(n)).
	 * @param id 
	 * @param removeIncoming 
	 */
	public function removeAllConnectionsFromNodeWithID(id:Int, ?removeIncoming:Bool):Void;

	/**
	 * Removes all connections from all nodes in the graph.
	 */
	public function removeAllConnections():Void;

	/**
	 * Sets the matching node's x and y values.
	 * @param id 
	 * @param x 
	 * @param y 
	 */
	public function setXYForNodeWithID(id:Int, x:Float, y:Float):Void;

	/**
	 * Returns an array containing all nodes in the graph.
	 * @return Node
	 */
	public function allNodes():Array<Node>;
}
