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
      |7|clegall@gmail.com|Test2019#|ABA364|PROCURADOR AUTO2|En camino|
      |8|clegall@gmail.com|Test2019#|ABA365|PROCURADOR AUTO3|En camino|
