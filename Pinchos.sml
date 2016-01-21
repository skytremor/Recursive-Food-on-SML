datatype pincho =
   Palo
|  Pollo of pincho
|  Cerdo of pincho
|  Pan of pincho
|  Cebolla of pincho
|  Pimiento of pincho

val mipincho = Pan (Pollo (Pimiento (Pollo (Cebolla (Pollo Palo)))))

fun es_vegetariano (Cebolla p) = es_vegetariano p
| es_vegetariano (Pan p) = es_vegetariano p
| es_vegetariano (Pimiento p) = es_vegetariano p
| es_vegetariano Palo = true
| es_vegetariano _ = false

val a = es_vegetariano Palo 
val b = es_vegetariano (Pan Palo)
val c = es_vegetariano mipincho
