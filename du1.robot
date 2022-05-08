***Settings***
Resource    keywords1.resource
Resource    ../keywords1.resource
Test Setup    Setup Keyword
Test Teardown     Close Browser

*** Test Cases ***
312 Adding a multiple items via various paths
    Select From search box    xpath://*[@id="edtSearch"]
    Add text to search box    lego
    Select From search    Search
    Select From Top Rated    Top-Rated
    Add To Cart Item With Index2    Buy
    Check the product name    LEGO Set
    Check the product picture    xpath://*[@id="basketpopup"]/div/div[2]/div/a/span[1]/img
    Top Right Cart Should Contain Card Icon    1
    Select From Alza logo    Alza.sk


