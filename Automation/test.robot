*** Settings ***
Library  SeleniumLibrary


*** variables ***




*** test cases ***
 Test 1
    Open Browser    https://www.trendyol.com/    chrome
    Maximize Browser Window
    Sleep  2
    Click Element   css=#country-selection > div > div > div.country-selection__content > div.country-select
    Sleep  2
    Click Element   css=#country-selection > div > div > div.country-selection__content > div.country-select > select > option:nth-child(2)
    Sleep  2
    Click Element   css=#country-selection > div > div > div.country-selection__content > div.country-actions > button
    Sleep  2

    Click Element   xpath=//*[@id="navigation-wrapper"]/nav/ul/li[9]/a
    Sleep  2
    Page should contain    Televizyon
    Click Element   xpath=//*[@id="browsing-gw-homepage"]/div/div[1]/div/div[2]/a[4]
    Sleep  2
    Page should contain    LG
    Click Element   xpath=//*[@id="sticky"]/div/div[2]/div[2]/a[4]
    Sleep  2
    Page should contain    LG OLED55C14 55



    Wait Until element Is Visible   css=#search-app > div > div.srch-rslt-cntnt > div.srch-prdcts-cntnr > div:nth-child(4) > div > div:nth-child(1) > div.p-card-chldrn-cntnr > a > div.image-container > div.image-overlay > div.image-overlay-body
    Sleep  2
    Click Element       css=#search-app > div > div.srch-rslt-cntnt > div.srch-prdcts-cntnr > div:nth-child(4) > div > div:nth-child(1) > div.p-card-chldrn-cntnr > a > div.image-container > div.image-overlay > div.image-overlay-body
    Sleep  2
    Switch Window      title=LG OLED55C14 55" 139 Ekran Uydu Alıcılı 4K Ultra HD Smart OLED TV Fiyatı, Yorumları - TRENDYOL
    Click Element      xpath=//*[@id="product-detail-app"]/div/div[2]/div[1]/div[2]/div[5]/button/div[1]

    Sleep  18
    Close Browser



*** keywords ***
 Assertions
    Page should contain    Televizyon
    Page should contain    LG
    Page should contain    LG OLED55C14 55