# 变量管理
*** Variables ***
# ${python_URL}               https://dev-python.codemao.cn
# ${python_URL}               https://staging-python.codemao.cn
${python_URL}                 https://python.codemao.cn

${wood_URL_dev}               https://dev-wood.codemao.cn
${wood_URL_staging}           https://staging-wood.codemao.cn
${wood_URL}                   https://wood.codemao.cn

# ${user_URL}                 https://dev-www.codemao.cn
# ${user_URL}                 https://staging-www.codemao.cn
${user_URL}                   https://www.codemao.cn

# 浏览器管理
${test_browser}               chrome

# 数据管理
${python_username}            18682236985
${python_password}            123456

${python_qqusername}          2710614370
${python_qqpassword}          pyf.18772939709


# element管理
${python_在线体验}            css:.btn_3WmFh.wood_btn_1nNKI
${python_下载客户端}          css:.btn_3WmFh.download_btn_3MC2e
${python_体验Python}          xpath://a[text()='体验Python']
# ${python_体验硬件编程}      xpath://a[text()='体验硬件编程']
${python_进一步了解}          xpath://a[text()='进一步了解']
${python_去创作}              css:.common_btn_1nSHU.create_btn_2dGL-
${python_创作}                css:.create_UNCF-
${python_首页}                xpath://a[text()='首页']
${python_课程}                xpath://a[text()='课程']

${help_事件}                  xpath://div[@class='nav-tabs_2yDVy']/div[1]//p
${help_控制}                  xpath://div[@class='nav-tabs_2yDVy']/div[2]//p
${help_运算}                  xpath://p[text()='运算']
${help_字符串}                xpath://p[text()='字符串']
${help_变量}                  xpath://p[text()='变量']
${help_列表}                  xpath://p[text()='列表']
${help_字典}                  xpath://p[text()='字典']
${help_函数}                  xpath://p[text()='函数']
${help_海龟库}                xpath://p[text()='海龟库']

${sampleCode_1}               xpath://p[text()='1']
${sampleCode_2}               xpath://p[text()='2']
${sampleCode_3}               xpath://p[text()='3']
${code_查看示例代码}          xpath://p[text()='查看示例代码']

${python_挑战}                css:.challenge_Ey5uE
${python_挑战hover}           css:.sub_item_I18oB

${python_我的作品}            xpath://a[text()='我的作品']
${python_登录页面}            css:.dialog-wrap__2Ypu3
${python_login用户名}         xpath://input[@placeholder='用户名']
${python_login密码}           xpath://input[@placeholder='密码']
${python_登录按钮}            xpath://span[text()='登录']

${python_登录/注册}           css:.avatar_1ieto.default_2xECo
${python_login_close}         css:.close_btn_1zP1T

${python_作品1}               css:.vh-center.project-wrapper_uv7Es>div
${python_作品1_删除}          css:.delete-btn_1-NmD
${python_作品1_名称}          ${python_作品1}>div>div.project-info_1Qqzg>p
${wood_登录用户}              xpath://div/header/div[2]/div[3]
${wood_登录用户_hover}        xpath://div[text()='我的作品']/parent::div
${wood_文件}                  xpath://div[text()='文件']
${wood_文件_另存为}           xpath://div[text()='另存为']
${python_删除框}              xpath://div[@class='vh-center tips_2xPMr']//parent::div
${python_删除取消}            css:.cancel_1GVnU
${python_删除确认}            css:.delete_3uLkB

${python_全部作品}            css:.type_DWla9.active_2Ozy6
${python_Python作品}          xpath://span[text()='Python作品']
${python_硬件作品}            xpath://span[text()='硬件作品']
${python_搜索作品}            xpath://input[@placeholder='搜索']

${python_container}           css:.project-manager-wrapper_YXP2J
${python_作品不存在}          css:.vh-center.project-wrapper_uv7Es.empty_1OOeL
${python_作品存在}            css:.vh-center.project-wrapper_uv7Es
${python_不存在提示}          xpath://p[text()='没找到相关结果']

${python_+号按钮}             css:.creat-btn_2RJlL
${python_+号按钮_hover}       css:.vh-center.create_list_AgaJH
${python_python}              xpath://span[text()='Python']
${python_硬件}                xpath://span[text()='硬件']

${python_signup1_button}      css:.button__2Rs4U.base_button__XBE-5.white__2VI82
${python_sign_phonenum}       xpath://input[@placeholder='手机号']
${python_sign_passwd}         xpath://input[@placeholder='密码']
${python_sign_prove}          xpath://input[@placeholder='验证码']
${python_signup2_button}      xpath://span[text()='注册']
${python_sign_error_text}     css:.error_2Je9a
${python_signup_close}        css:.icon__ERYBL.icon-close__2dQFw
${python_login_error_text}    css:.error_2Je9a

${python_第三方登录}          xpath://span[text()='第三方登录']
${python_QQ登录}              xpath://span[text()='第三方登录']//following-sibling::span[1]
${python_微信登录}            xpath://span[text()='第三方登录']//following-sibling::span[2]
${python_QQiframe}            xpath://*[@id="ptlogin_iframe"]
${python_QQ账号登录}          css:#switcher_plogin
${python_QQ账号框}            xpath://*[@id="u"]
${python_QQ密码框}            xpath://*[@id="p"]
${python_QQ登录按钮}          xpath://*[@id="login_button"]

${python_personal}            css:.avatar_1ieto
${python_personal_hover}      xpath://div[2]/span/span[3]
${python_个人中心}            xpath://span[text()='个人中心']
${python_作品管理}            xpath://span[text()='作品管理']
${python_账号设置}            xpath://span[text()='账号设置']
${python_退出登录}            xpath://span[text()='退出登录']



# 关键字管理
*** Keywords ***
Open web
    Open browser    ${python_URL}    chrome
    Maximize Browser Window
    Set Selenium Speed    .6 seconds
    Set Browser Implicit Wait    10 seconds
    Set Global Variable    ${Current_URL}    Get Location
    Sleep    3

ButtonToWood
    [Arguments]    ${button_locator}    ${URL}
    Click Element    ${button_locator}
    Sleep    2
    Select Window    title=编程猫代码编辑器
    log    ${URL}
    Run Keyword If    '${URL}' == 'https://dev-python.codemao.cn'    Location Should Be    ${wood_URL_dev}
    ...    ELSE IF    '${URL}' == 'https://staging-python.codemao.cn'    Location Should Be    ${wood_URL_staging}
    ...    ELSE IF    '${URL}' == 'https://python.codemao.cn'    Location Should Be    ${wood_URL}
    Close Window
    Select Window    海龟编辑器官方下载_Python编辑器_少儿编程编辑器_图形化编程编辑器-编程猫

ButtonToHelp
    [Arguments]    ${button_locator}
    Click Element    ${python_课程}
    ${python_boxName}    Get Text    ${button_locator}
    Click Element    ${button_locator}
    Sleep    1
    @{wind_all}    Get Window Handles
    ${wind_current}    set variable    @{wind_all}[1]
    Log    ${wind_current}
    Select Window    ${wind_current}
    ${help_title}=    Get Title
    Should Contain    ${help_title}     ${python_boxName}
    Close Window
    Select Window    海龟编辑器官方下载_Python编辑器_少儿编程编辑器_图形化编程编辑器-编程猫

ClickToSampleCode
    [Arguments]    ${button_num}
    Click Element    ${python_课程}
    ${code_num}    Get Text    ${button_num}
    Click Element    ${button_num}
    Click Element    ${code_查看示例代码}
    Select Window    NEW
    ${Current_URL}=    Get Location
    Run Keyword If    '${code_num}' == '1'    Should End With    ${Current_URL}    1
    ...    ELSE IF    '${code_num}' == '2'    Should End With    ${Current_URL}    2
    ...    ELSE IF    '${code_num}' == '3'    Should End With    ${Current_URL}    3
    Close Window
    Select Window    海龟编辑器官方下载_Python编辑器_少儿编程编辑器_图形化编程编辑器-编程猫


assert_login_exist
    Element Should Be Visible    ${python_登录页面}
    Click Element    ${python_login_close}

login
    input text    ${python_login用户名}    ${python_username}
    input text    ${python_login密码}    ${python_password}
    Click Element    ${python_登录按钮}
    Wait Until Page Does Not Contain Element    ${python_登录/注册}


Myfile_checklogin
    assert_login_exist
    Click Element    ${python_我的作品}
    login
    Click Element    ${python_我的作品}

My filesToSearch
    [Arguments]    ${file_type}    ${file_name}
    Click Element    ${python_我的作品}
    ${Current_URL}=    Get Location
    Run Keyword If    '${Current_URL[-4:]}' == '.cn/'    Myfile_checklogin
    Click Element    ${file_type}
    ${file_typeName}    Get Text    ${file_type}
    Input Text    ${python_搜索作品}    ${file_name}
    log    ${file_typeName}
    log    ${file_name}
    Run Keyword If    '${file_typeName}' == '全部作品' and '${file_name}' == '斐波那契'    Page Should Contain Element    ${python_作品1}
    ...    ELSE IF    '${file_typeName}' == '全部作品' and '${file_name}' == 'microbit'    Page Should Contain Element    ${python_作品1}
    ...    ELSE IF    '${file_typeName}' == '全部作品' and '${file_name}' == 'xxxxx'    Page Should Contain Element    ${python_不存在提示}
    ...    ELSE IF    '${file_typeName}' == 'Python作品' and '${file_name}' == '斐波那契'    Page Should Contain Element    ${python_作品1}
    ...    ELSE IF    '${file_typeName}' == 'Python作品' and '${file_name}' == 'microbit'    Page Should Contain Element    ${python_不存在提示}
    ...    ELSE IF    '${file_typeName}' == '硬件作品' and '${file_name}' == 'microbit'    Page Should Contain Element    ${python_作品1}
    ...    ELSE IF    '${file_typeName}' == '硬件作品' and '${file_name}' == '斐波那契'    Page Should Contain Element    ${python_不存在提示}
    Clear Element Text    ${python_搜索作品}


Open Signup
    Click Element    ${python_登录/注册}
    Click Element    ${python_signup1_button}


Signup Failed
    [Arguments]    ${sign_phonenum}    ${sign_passwd}    ${prove_code}    ${error}
    Open Signup
    Input Text    ${python_sign_phonenum}    ${sign_phonenum}
    Input Text    ${python_sign_passwd}    ${sign_passwd}
    Input Text    ${python_sign_prove}    ${prove_code}
    Click Element    ${python_signup2_button}
    Element Should Contain    ${python_sign_error_text}    ${error}
    Click Element    ${python_signup_close}


Login Failed
    [Arguments]    ${username}    ${password}    ${error}
    Click Element    ${python_登录/注册}
    input text    ${python_login用户名}    ${username}
    input text    ${python_login密码}    ${password}
    Click Element    ${python_登录按钮}
    Element Should Contain    ${python_login_error_text}    ${error}
    Click Element    ${python_login_close}

Personal
    [Arguments]    ${button_locator}    ${message}
    Click Element    ${python_我的作品}
    ${Current_URL}=    Get Location
    Run Keyword If    '${Current_URL[-4:]}' == '.cn/'    Myfile_checklogin
    Mouse Over    ${python_personal}
    Element Should Be Visible    ${python_personal_hover}    个人中心作品管理账号设置退出登录
    Click Element    ${button_locator}
    Select Window    NEW
    ${Current_URL}=    Get Location
    Run Keyword If    '${python_URL}' == 'https://dev-python.codemao.cn'    Should End With    ${Current_URL}    ${message}
    ...    ELSE IF    '${python_URL}' == 'https://staging-python.codemao.cn'    Should End With    ${Current_URL}    ${message}
    ...    ELSE IF    '${python_URL}' == 'https://python.codemao.cn'    Should End With    ${Current_URL}    ${message}
    Close Window
    Select Window    海龟编辑器官方下载_Python编辑器_少儿编程编辑器_图形化编程编辑器-编程猫


Teardown
    Close All Browsers
    # Close Process    ${test_browserdriver}    #谷歌