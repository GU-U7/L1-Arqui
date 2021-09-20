# Justificación problema 3

Debemos crear mapas de Karnaugh con respecto a los resultados de "mayor a", "menor a" e "igual".

## Caso AB>CD (F3)
Armamos y resolvemos el K-Map, asegurandonos que la última expersión hallada tenga la menor cantidad de operaciones posibles.
![]("kmap_ABmayorCD.PNG")
![]("kmap_ABmayorCD_circuito.PNG")

```verilog
module 
```


## Caso AB<CD (F2)
Utilizamos la expresión y circuito del caso anterior, intercambiando *C* por *A* y *D* por *B*.
![]("kmap_ABmenorCD_circuito.PNG")

## Caso AB=CD (F1)
Para evitar crear una expresión y modulo adicional, podemos utilizar una puerta NOR con las salidas de F2 y F3.


