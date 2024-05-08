/* Mit dem Praedikat graph_Coloring/4 wird die Faerbung des Graphen
durchgefuehrt */
graph_Coloring(Knoten, Kanten, Farben, Ergebnis) :-
    findall((K, _), member(K, Knoten), Ergebnis),
    bedingung(Kanten, Ergebnis),
    knoten_Coloring(Farben, Ergebnis).

/* Das Praedikat bedingung/2 definiert die Bedingung, dass zwei
benachbarte Knoten nicht die gleiche Farben erhalten sollen */
bedingung([], _).
bedingung([(Knoten1, Konten2)|RestKanten], Ergebnis) :-
    member((Knoten1, Farbe1), Ergebnis),
    member((Konten2, Farbe2), Ergebnis),
    dif(Farbe1, Farbe2),
    bedingung(RestKanten, Ergebnis).

/* Mit dem Praedikat knoten_Coloring/2 wird jeder Knoten im 
Graph gefaerbt */
knoten_Coloring(_, []).
knoten_Coloring(Farben, [(_, Farbe)|RestKnoten]) :-
    member(Farbe, Farben),
    knoten_Coloring(Farben, RestKnoten).