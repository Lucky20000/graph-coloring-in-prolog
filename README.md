# Graph Coloring in Prolog

## Aufgabe
Ein ungerichter Graph soll gefärbt werden. Die Knoten des Graphen sollen dabei so gefärbt werden, dass keine benachbarten Knoten die gleiche Farbe erhalten. Die verwendbaren Farben sollen als Parameter vorgegeben werden.

## Erklärung der Prädikate
Die Färbung des Graphen wird mit dem Prädikat `graph_Coloring/4` durchgeführt. Die Knoten werden als Liste übergeben. Jedes Element repräsentiert dabei einen Knoten. Die Kanten werden ebenfalls als Liste übergeben. Jedes Element repräsentiert dabei eine Kante zwischen zwei Knoten. Da der Graph ungerichtet ist, werden Kanten nur einmal definiert. Das heißt, um beispielsweise zu definieren, dass es im Graphen eine Kante zwischen den Knoten a und b gibt, reicht das Element (a,b) aus. Das Element (b,a) ist nicht mehr nötig. Die Farben, die verwendet werden sollen, werden als Liste übergeben. Jedes Element repräsentiert eine Farbe.

Bei der Ausführung des Programms wird erst mit dem vordefinierten Prädikat `findall/3` die Variable Ergebnis mit einer Liste instanziiert, in der alle Knoten als Elemente zusammen mit der anonymen Variable gespeichert werden. Die anonymen Variablen dienen jeweils als Platzhalter und werden mit dem rekursiven Prädikat `knoten_Coloring/2` durch eine Farbe ersetzt.

Eine Bedingung bei der Färbung des Graphen ist, dass zwei benachbarte Knoten nicht die gleiche Farbe haben dürfen. Diese Bedingung wird durch das rekursive Prädikat `bedingung/2` realisiert. Das Prädikat iteriert einmal durch die Kantenliste. Mithilfe der vordefinierten Prädikate `member/2` und `dif/2` wird definiert, dass sich die Instanziierungen der Farben von zwei Konten, die durch eine Kante verbunden sind, in der Ergebnisliste immer unterscheiden müssen. Eine wichtige Eigenschaft des Prädikats `dif/2` ist, dass, nachdem `dif/2` mit zwei Variablen aufgerufen wurde, scheitert jede Unifikation der Variablen, die darin resultieren würde, dass die zwei Variablen gleich werden.