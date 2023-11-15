Feature: Obtener una mascota existente

  Background:
    * def tramaValidate = read('classpath:TraerMascota/TraerMascotaValidate.json')

  @EscenarioGET
  Scenario Outline: : Obtener una mascota existente
    Given url 'https://petstore.swagger.io/v2/pet/'+<idPet>
    When method GET
    Then status <statusCode>
    And match response == tramaValidate.TramaExiste
    And print response

    Examples:
      | idPet | statusCode |
      | 2023  | 200        |
      | 2024  | 200        |
      | 2025  | 200        |

  @EscenarioGET2
  Scenario Outline: : Obtener 404 mascota no existe
    Given url 'https://petstore.swagger.io/v2/pet/'+<idPet>
    When method GET
    Then status <statusCode>
    And match response == tramaValidate.TramaNoExiste
    And print response

    Examples:
      | idPet | statusCode |
      | 143   | 404        |
      | 144   | 404        |
      | 145   | 404        |