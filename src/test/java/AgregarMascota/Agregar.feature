Feature: Agregar una nueva mascota

  Background:
    * def requestToSend = read('classpath:AgregarMascota/RequestAddPet.json')
    * def tramaValidate = read('classpath:AgregarMascota/AgregarMascotaValidate.json')
    * def data_Pet = read('classpath:AgregarMascota/baufestPostPetData.csv')


  @EscenarioPOST
  Scenario Outline: : Agregar mascota
    Given url 'https://petstore.swagger.io'
    And path '/v2/pet'
    And request requestToSend.TramaAdd
    When method POST
    Then status <statusCode>
    Then match response == tramaValidate
    Then print response

    Examples:
      | idPet | idCategoryPet | CategoryName      | NamePet | PhotoUrlPet           | idTagPet | TagNamePet | status   | statusCode |
      | 2023  | 2023001       | GoldenRetriever   | Loki    | www.photoTEST1234.com | 56       | LK         | Good     | 200        |
      | 2024  | 2024002       | LabradorRetriever | Tita    | www.photoTEST.net     | 60       | Tita       | Excelent | 200        |
      | 2025  | 2025003       | Bulldog Frances   | Iceberg | www.photoTEST1.gob    | 89       | ICEBLAnck  | Clear    | 200        |

  @EscenarioPostCSV
  Scenario Outline: : Agregar mascota con datos desde un archivo CSV
    Given url 'https://petstore.swagger.io'
    And path '/v2/pet'
    And request
    """
    {
      "<id>": <idPet>,
        "category": {
          "<id>": <idCategoryPet>,
          "<name>": <CategoryName>
          },
          "<name>": <NamePet>,
          "<photoUrls>": [
            <PhotoUrlPet>
          ],
          "tags": [
            {
              "<id>": <idTagPet>,
              "<name>": <TagNamePet>
            }
          ],
          "<status>": <status>
    }
    """
    When method POST
    Then status 200
    Then print response

    Examples:
      | data_Pet |