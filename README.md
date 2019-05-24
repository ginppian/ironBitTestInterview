## Ejercicio:

Se le dará más peso a la calidad del código y de la solución que al número de puntos entregados.

Crear una aplicación siguiendo la arquitectura MVP y que cuente con Unit Testing. Contará con un UITextField en el que se van a ir ingresando dígitos (solo números) y los elementos que considere necesarios para mostrar los resultados siguientes:

Cada vez que se escriba un dígito o borre un dígito en el UITextField se debe evaluar la cadena para mostrar 2 cosas:

### Indicar si es valida.

- <b>Mostrar la secuencia de números modificada.</b>
- <b>Indicar si es valida</b>

Una serie de números es válida si cumple con las las condiciones siguientes: 

- Que todos sus valores sean diferentes entre si
- Valida
- 39846
- 7643 - Invalida
- 111 - 8748

Que no se tengan valores consecutivos ascendentes (**Opcional**) 

- Valida
- 982 - 627 - 379
- Invalida - 123 - 789
- 67

### Mostrar la secuencia de números modificada.

Se debe de mostrar la secuencia intercalando el primero con el ultimo, el segundo con el antepenúltimo y así sucesivamente:
Ej.
1234567890 -> 1029384756