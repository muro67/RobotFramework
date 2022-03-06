* Settings *
Library  SeleniumLibrary
Library    Process


* variables *

${COUNTRY}    TR
${tv}     data:id:113480717
${category}    Elektronik
${item}    Televizyon
${marka}       LG


*** Test Cases ***
Test Trendyol
    Open Browser    https://www.trendyol.com/    chrome
    Maximize Browser Window

    Select From List By Value   css=.country-select > select     ${COUNTRY}
    Click Element   css=.country-actions > button

    Click Element   xpath=//*[@id="navigation-wrapper"]/nav/ul/li/a[.='${category}']
    Click Element   xpath=//*[@id="browsing-gw-homepage"]//a[.='${item}']
    Element Text Should Be    css=.srch-rslt-title > .srch-ttl-cntnr-wrppr > .dscrptn > h1    ${item}


    Click Element    xpath=//*[contains(@Class, fltr-item-wrppr)] // div[.='${marka}']

    # Bekleyelim biraz
    Sleep    2s

    ${URUN}     Get WebElements    css=.prdct-desc-cntnr-ttl
    FOR    ${element}    IN    @{URUN}

            Element Text Should Be    ${element}    ${marka}

    END


    ${MYTV}    Get WebElement    ${tv} >> css:.prdct-desc-cntnr-name

    ${URL}     Get Element Attribute    ${tv} >> css:a    href
    Wait Until Element Is Visible    ${MYTV}
    Click Element    ${MYTV}
    ${TITLETV}    Get Text    ${MYTV}

    # Switch Window
    Switch Window    url=${URL}

    # Assertion check tv title after switch tab
    Element Should Contain     css=.detail-name    ${TITLETV}

    Click Button    css:.add-to-basket
    Sleep    2s

    Click Element      css:.account-basket
    Sleep    2s

    # Assertion check tv title in basket
    Element Should Contain    css=.pb-item   ${TITLETV}
    Sleep    10s
    Close Browser

* keywords *
