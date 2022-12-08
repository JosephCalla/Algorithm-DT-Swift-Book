// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.

import Foundation

// Vertices = Circles
// Edges = lines that connect them

// Weight = it that represents the cost of using this edge.
// Type Lines
// Directed   =  -------->
// UnDirected =  <------->

public enum EdgeType {
    case directed
    case undirected
}

public protocol Graph {
    associatedtype Element
    
    // Creates a vertex and adds it to the graph
    func createVertex(data: Element) -> Vertex<Element>
    // Adds a directed edge between two vertices
    func addDirectedEdge(
        from source: Vertex<Element>,
        to destination: Vertex<Element>,
        weight: Double?
    )
    // Adds an undirected (or bi-directional) edge between two vertices
    func addUndirectedEdge(
        between source: Vertex<Element>,
        and destination: Vertex<Element>,
        weight: Double?
    )
    // Uses "EdgeType" to add either a directed or undirected edge between two vertices
    func add(
        _ edge: EdgeType,
        from source: Vertex<Element>,
        to destination: Vertex<Element>,
        weight: Double?
    )
    // Returns a list of outgoing edges from a specific vertex
    func edges(from source: Vertex<Element>) -> [Edge<Element>]
    // Returns the weight of the edge between two vertices
    func weight(
        from source: Vertex<Element>,
        to destination: Vertex<Element>
    ) -> Double?
}
