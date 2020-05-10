# cp01: Representante Atencion Vehicular
@tag
Feature: Representante Atencion Vehicular

  @CopiarPlantillas
  Scenario: copiar plantillas
    Given copiar plantillas

  @RegistrarNuevoCaso
  Scenario Outline: Se registra nuevo caso
    Given que accedo al sistema Geolocalización Rimac con usuario "<usuario>" y password "<password>"
    When selecciono opción Nuevo Caso
    And ingreso placa "<placa>"
    And ingreso número de telefono "<telefono>"
    And ingreso la  dirección "<direccion>"
    And ingreso la referencia "<referencia>"
    And selecciono opción Enviar
    Then se muestra mensaje "<mensaje>" de generación de caso exitoso
    And al filtrar la placa "<placa>" en la pantalla principal se muestra el caso creado con estado "<estado>" Solicitado

    ###DATOS###@DataPrueba|1@01-RegistrarAtencion
    Examples: 
      |0|usuario|password|placa|telefono|direccion|referencia|mensaje|estado|resultado|
      |6|usuario.test.geo@gmail.com |Rimac2019#|ABA354|987654322|tambo real 236|referencia de prueba|Registro realizado con éxito.|Solicitado| |
      |7|usuario.test.geo@gmail.com |Rimac2019#|ABA355|987654323|Miraflores|referencia de prueba|Registro realizado con éxito.|Solicitado| |

  @RegistrarPlacaEnUso
  Scenario Outline: Registrar placas con atenciones en proceso
    Given que accedo al sistema Geolocalización Rimac con usuario "<usuario>" y password "<password>"
    When selecciono opción Nuevo Caso
    And ingreso placa "<placa>"
    And ingreso número de telefono "<telefono>"
    And ingreso la  dirección "<direccion>"
    And ingreso la referencia "<referencia>"
    And selecciono opción Enviar
    Then se muestra mensaje "<mensaje>" restrictivo relacionado a que ya se encuetra la placa ingreada en atención.

    ###DATOS###@DataPrueba|1@01-RegistrarAtencion
    Examples: 
      |0|usuario|password|placa|telefono|direccion|referencia|mensaje|estado|resultado|
      |6|usuario.test.geo@gmail.com |Rimac2019#|ABA354|987654322|tambo real 236|referencia de prueba|Registro realizado con éxito.|Solicitado| |
      |7|usuario.test.geo@gmail.com |Rimac2019#|ABA355|987654323|Miraflores|referencia de prueba|Registro realizado con éxito.|Solicitado| |
