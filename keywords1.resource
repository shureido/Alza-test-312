*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    locators1.resource

*** Keywords ***
Setup keyword
    Open Browser    https://www.alza.sk/EN/    gc
    Accept Cookies 
    Maximize Browser Window
    
 Accept Cookies
     Wait Until Page Contains Element    xpath=//a[@data-action-id-value='1023']
     Click Element     xpath=//a[@data-action-id-value='1023']

Select From search box
    [Arguments]    ${item}
    ${locator}    Format String    ${search_box}    ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

 Add text to search box
    [Arguments]    ${item}
    ${locator}    Input Text     ${search_box}    lego
    Wait Until Page Contains    lego

Select From search
    [Arguments]    ${item}
    ${locator}    Format String    ${search}    ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

Select From Top Rated
    [Arguments]    ${item}
    ${locator}    Format String    ${top_rated}    ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}

 Add To Cart Item With Index2
    [Arguments]    ${item}
    ${locator}    Format String    ${item_boxes2}    ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}
    Wait Until Page Contains    Product Added to Cart.

Check the product name
    [Arguments]    ${item}
    ${locator}    Format String    ${item_Title}    ${item}
    Wait Until Page Contains Element    ${locator}
    Wait Until Page Contains    LEGO Set

Check the product picture
    [Arguments]    ${item}
    ${locator}    Format String    ${item_picture}    ${item}
    Wait Until Page Contains Element    ${locator}


Top Right Cart Should Contain Card Icon
    [Arguments]    ${number}
    ${count_locator}    Format String   ${top_right_cart_partial_count2}
    ${count}    Get Text    ${count_locator}


Select From Alza logo
    [Arguments]    ${item}
    ${locator}    Format String    ${logo_item}    ${item}
    Wait Until Page Contains Element    ${locator}
    Click Element    ${locator}