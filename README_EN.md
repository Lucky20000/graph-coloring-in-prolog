# Graph Coloring in Prolog

## Task
An undirected graph should be colored. The nodes of the graph should be colored in such a way that no adjacent nodes have the same color. The available colors should be provided as a parameter.

## Explanation of the Predicates
The coloring of the graph is performed using the predicate `graph_Coloring/4`. The nodes are passed as a list, where each element represents a node. The edges are also passed as a list, where each element represents an edge between two nodes. Since the graph is undirected, edges are defined only once. This means that, for example, to define an edge between nodes `a` and `b`, the element `(a,b)` is sufficient. The element `(b,a)` is not needed. The colors to be used are passed as a list, where each element represents a color.

When executing the program, the predefined predicate `findall/3` first instantiates the variable `Result` with a list in which all nodes are stored as elements together with the anonymous variable. The anonymous variables serve as placeholders and are replaced with a color by the recursive predicate `knoten_Coloring/2`.

One condition in the coloring of the graph is that two adjacent nodes must not have the same color. This condition is implemented by the recursive predicate `bedingung/2`. The predicate iterates once through the edge list. Using the predefined predicates `member/2` and `dif/2`, it is defined that the color assignments of two nodes connected by an edge in the result list must always differ. An important property of the predicate `dif/2` is that, after being called with two variables, any unification of the variables that would make them equal will fail.
