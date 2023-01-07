*** Settings ***
Library             SeleniumLibrary
Library             ./libraries/customLibrary.py

*** Variables ***
${BROWSER} =    chrome
${URL} =        https://www.facebook.com
${i} =  ''

*** Keywords ***
Test Keyword 1
    log     "Testing should be closing now"
    close all browsers

Testing custom lib
    this is a custom work

*** Test Cases ***
I should be able to access "Facebook" page
    [Documentation]     This is test 1
    [Tags]              test1
    log                 ${TEST NAME}
    set log level       debug
    open browser        https://www.facebook.com/   chrome
    maximize browser window
    log                 Executing test1...!
    sleep               3s
    input text          //*[@id="email"]    test@hotmail.com
    input text          //*[@id="pass"]     test
    sleep               3s
    click link          //a[contains(text(),'¿Has olvidado la contraseña?')]
    #press keys          //*[@id="pass"]     RETURN
    Testing custom lib
    sleep               10s
    go to               https://www.facebook.com/photo/?fbid=415056120653915&set=a.415056107320583
    sleep               10s

    #FOR    ${i}     IN RANGE     5
    #Log     ${i}
    #Click Element       //*[@class='xi81zsa xo1l8bm xlyipyv xuxw1ft x49crj4 x1ed109x xdl72j9 x1iyjqo2 xs83m0k x6prxxf x6ikm8r x10wlt62 x1y1aw1k xn6708d xwib8y2 x1ye3gou']
    #press keys          //*[@class='xi81zsa xo1l8bm xlyipyv xuxw1ft x49crj4 x1ed109x xdl72j9 x1iyjqo2 xs83m0k x6prxxf x6ikm8r x10wlt62 x1y1aw1k xn6708d xwib8y2 x1ye3gou']      comment # ${i}
    #sleep               2s
    #press keys          //*[@class='x1ed109x xdl72j9 x1iyjqo2 xs83m0k x6prxxf x6ikm8r x10wlt62 x1y1aw1k xn6708d xwib8y2 x1ye3gou']      RETURN
    #END

    sleep               2s
    #press keys          //*[@class='x1ed109x xdl72j9 x1iyjqo2 xs83m0k x6prxxf x6ikm8r x10wlt62 x1y1aw1k xn6708d xwib8y2 x1ye3gou']      RETURN
    close all browsers

# python -m robot -d results test/fbTest.robot