# cp01: Representante Atencion Vehicular
@tag
Feature: Representante Atencion Vehicular

  @CopiarPlantillas
  Scenario: copiar plantillas
    Given copiar plantillas

  @RegistrarNuevoCaso
  Scenario Outline: Se registra nuevo caso
    Given que accedo al sistema Geolocalizaci贸n Rimac con usuario "<usuario>" y password "<password>"
    When selecciono opci贸n Nuevo Caso
    And ingreso placa "<placa>"
    And ingreso n煤mero de telefono "<telefono>"
    And ingreso la  direcci贸n "<direccion>"
    And ingreso la referencia "<referencia>"
    And selecciono opci贸n Enviar
    Then se muestra mensaje "<mensaje>" de generaci贸n de caso exitoso
    And al filtrar la placa "<placa>" en la pantalla principal se muestra el caso creado con estado "<estado>" Solicitado

    ###DATOS###@DataPrueba|1@01-RegistrarAtencion
    Examples: 
      |0|usuario|password|placa|telefono|direccion|referencia|mensaje|estado|resultado|
      |2|usuario.test.geo@gmail.com |Rimac2019#|ABA071|987654322|tambo real|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
      |3|usuario.test.geo@gmail.com |Rimac2019#|ABA072|987654323|Miraflores|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
      |4|usuario.test.geo@gmail.com |Rimac2019#|ABA073|987654324|Avenida juan de arona 780, San isidro|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
      |5|usuario.test.geo@gmail.com |Rimac2019#|ABA073|987654324|Avenida juan de arona 780, San isidro|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
      |6|usuario.test.geo@gmail.com |Rimac2019#|ABA071|987654322|tambo real|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
      |7|usuario.test.geo@gmail.com |Rimac2019#|ABA072|987654323|Miraflores|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |

  @RegistrarPlacaEnUso
  Scenario Outline: Registrar placas con atenciones en proceso
    Given que accedo al sistema Geolocalizaci贸n Rimac con usuario "<usuario>" y password "<password>"
    When selecciono opci贸n Nuevo Caso
    And ingreso placa "<placa>"
    And ingreso n煤mero de telefono "<telefono>"
    And ingreso la  direcci贸n "<direccion>"
    And ingreso la referencia "<referencia>"
    And selecciono opci贸n Enviar
    Then se muestra mensaje "<mensaje>" restrictivo relacionado a que ya se encuetra la placa ingreada en atenci贸n.

    ###DATOS###@DataPrueba|1@01-RegistrarAtencion
    Examples: 
      |0|usuario|password|placa|telefono|direccion|referencia|mensaje|estado|resultado|
      |2|usuario.test.geo@gmail.com |Rimac2019#|ABA071|987654322|tambo real|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
      |3|usuario.test.geo@gmail.com |Rimac2019#|ABA072|987654323|Miraflores|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
      |4|usuario.test.geo@gmail.com |Rimac2019#|ABA073|987654324|Avenida juan de arona 780, San isidro|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
      |5|usuario.test.geo@gmail.com |Rimac2019#|ABA073|987654324|Avenida juan de arona 780, San isidro|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
      |6|usuario.test.geo@gmail.com |Rimac2019#|ABA071|987654322|tambo real|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
      |7|usuario.test.geo@gmail.com |Rimac2019#|ABA072|987654323|Miraflores|referencia de prueba|Registro realizado con 閤ito.|Solicitado| |
