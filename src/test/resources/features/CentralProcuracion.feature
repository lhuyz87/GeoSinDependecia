# cp01: Central de procuración
@tag
Feature: Central de procuración

  @AsignarProcurador
  Scenario Outline: Asignar procurador
    Given que accedo al sistema Geolocalización Procurador Rimac con usuario "<usuario>" y password "<password>"
    When realizo la busqueda de la placa "<placa>"  con atención en estado Solicitado
    And selecciona opción Asignar procurador
    And selecciono  de la lista el procurador "<procurador>"
    And selecciono opción Asignar
    Then la atención  seleccionada debe cambiar de estado "<estado>" a En camino

    ###DATOS###@DataPrueba|1@02-AsignarProcurador
    Examples: 
      |0|usuario|password|placa|procurador|estado|
      |1|clegall@gmail.com|Test2019#|ABA070|ROCIO PAREDES|En camino|
      |2|clegall@gmail.com|Test2019#|ABA071|PRUEBAS2 LEGALL LEGALL|En camino|
      |3|clegall@gmail.com|Test2019#|ABA072|ROCIO PAREDES|En camino|
      |4|clegall@gmail.com|Test2019#|ABA073|PRUEBAS2 LEGALL LEGALL|En camino|
