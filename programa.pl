% Aquí va el código.

departamento(ventas, maria, empleado).
departamento(ventas, juan, cadete).
departamento(ventas, roque, pasante).

departamento(compras, nora, empleado).
departamento(compras, pedro, cadete).

departamento(administración, felipe, empleado).
departamento(administración, hugo, empleado).
departamento(administración, ana, cadete).

mismoDepartamento(Persona1, Persona2):-
    departamento(Departamento, Persona1, _),
    departamento(Departamento, Persona2, _).

puedeDarleOrdenes(Persona1, Persona2):-
    mismoDepartamento(Persona1, Persona2),
    departamento(_, Persona1, empleado),
    departamento(_, Persona2, cadete).

puedeDarleOrdenes(Persona1, Persona2):-
    mismoDepartamento(Persona1, Persona2),
    departamento(_, Persona1, empleado),
    departamento(_, Persona2, pasante).