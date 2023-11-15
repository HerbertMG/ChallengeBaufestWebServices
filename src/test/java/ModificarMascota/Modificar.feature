Feature: Modificar una mascota existente

  Background:
    * def requestToSend = read('classpath:ModificarMascota/RequestPutPet.json')
    * def tramaValidate = read('classpath:ModificarMascota/ModificarMascotaValidate.json')

  @EscenarioPUT
  Scenario Outline: : Modificar mascota existente
    Given url 'https://petstore.swagger.io'
    And path '/v2/pet'
    And request requestToSend.TramaPUT
    When method PUT
    Then status <statusCode>
    Then match response == tramaValidate
    Then print response

    Examples:
      | idPet | idCategoryPet | CategoryName | NamePet   | PhotoUrlPet           | idTagPet | TagNamePet | status    | statusCode |
      | 2023  | 20230010029   | Golden       | Loki23    | www.photoTEST1234.com | 567      | LK         | GoodYera  | 200        |
      | 2024  | 20240020028   | Labrador     | Tita14    | www.photoTEST.net     | 605      | Tita       | Excelente | 200        |
      | 2025  | 20250030027   | Bulldog      | Iceberg23 | www.photoTEST1.gob    | 893      | ICEBLAncko | Clear     | 200        |