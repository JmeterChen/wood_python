*** Settings ***
Library           SeleniumLibrary
Resource          python_resource.robot
Test Setup         Open web
Test Teardown       Teardown

*** Test Cases ***
open_python
    Title Should Be    海龟编辑器官方下载_Python编辑器_少儿编程编辑器_图形化编程编辑器-编程猫
    Element Should Contain    ${python_在线体验}    在线体验
    Element Text Should Be    ${python_在线体验}>span    无需安装 即刻体验
    Element Should Contain    ${python_下载客户端}    下载客户端
    Element Text Should Be    ${python_下载客户端}>span    海龟编辑器，畅享强大功能


Click to wood
    [Documentation]    点击不同按钮进入到创作页面
    ...                Data-driven testing
    [Template]    ButtonToWood
    ${python_在线体验}    ${Current_URL}
    ${python_体验Python}    ${Current_URL}
    ${python_去创作}    ${Current_URL}
    ${python_创作}    ${Current_URL}


Click class
    Click Element    ${python_进一步了解}
    ${Current_URL_kecheng1}=    Get Location
    Should End With    ${Current_URL_kecheng1}    course
    Sleep    0.5
    Click Element    ${python_首页}
    Sleep    0.5
    Click Element    ${python_课程}
    ${Current_URL_kecheng2}=    Get Location
    Should Be Equal As Strings    ${Current_URL_kecheng1}    ${Current_URL_kecheng2}
    Element Should Contain    css:.intro-title_13dLl    积木/代码知识导航

Click class_box
    [Documentation]    点击不同按钮进入到help界面
    ...                Data-driven testing
    [Template]    ButtonToHelp
    ${help_事件}
    ${help_控制}
    ${help_运算}
    ${help_字符串}
    ${help_变量}
    ${help_列表}
    ${help_字典}
    ${help_函数}
    ${help_海龟库}

Sample Code
    [Documentation]    点击不同按钮进入到help界面
    ...                Data-driven testing
    [Template]    ClickToSampleCode
    ${sampleCode_1}
    ${sampleCode_2}
    ${sampleCode_3}

Challenge
    Mouse Over    ${python_挑战}
    Element Should Contain    ${python_挑战hover}    通天塔
    Element Should Contain    ${python_挑战hover}    竞技场

My files
    Click Element    ${python_我的作品}
    assert_login_exist
    Click Element    ${python_我的作品}
    login
    Click Element    ${python_我的作品}
    ${Current_URL}=    Get Location
    Should End With    ${Current_URL}    work
    Mouse Over    ${python_作品1}
    ${file_name_old}    Get Text    ${python_作品1_名称}
    Sleep    1
    Click Element    ${python_作品1}
    Select Window    NEW
    ${Current_URL}=    Get Location
    Mouse Over    ${wood_登录用户}
    Element Should Contain    ${wood_登录用户_hover}    我的作品
    Mouse Over    ${wood_文件}
    Click Element    ${wood_文件_另存为}
    Sleep    1
    Close Window
    Select Window    海龟编辑器官方下载_Python编辑器_少儿编程编辑器_图形化编程编辑器-编程猫
    Reload Page
    Mouse Over    ${python_作品1}
    ${file_name_new}    Get Text    ${python_作品1_名称}
    Should Be Equal As Strings    ${file_name_new}    ${file_name_old}-副本
    Mouse Over    ${python_作品1}
    Click Element    ${python_作品1_删除}
    # Wait Until Page Contains    ${python_删除框}
    Click Element    ${python_删除取消}
    Mouse Over    ${python_作品1}
    Click Element    ${python_作品1_删除}
    # Wait Until Page Contains    ${python_删除框}
    Click Element    ${python_删除确认}
    ${file_name_final}    Get Text    ${python_作品1_名称}
    Should Be Equal As Strings    ${file_name_final}    ${file_name_old}


My files_search
    [Documentation]    点击不同按钮进入到help界面
    ...                Data-driven testing
    [Template]    My filesToSearch
    ${python_全部作品}    斐波那契
    ${python_全部作品}    microbit
    ${python_全部作品}    xxxxx
    ${python_Python作品}    1111
    ${python_Python作品}    斐波那契
    ${python_硬件作品}    microbit
    ${python_硬件作品}    斐波那契


My files_Newfile
    Click Element    ${python_我的作品}
    ${Current_URL}=    Get Location
    Run Keyword If    '${Current_URL[-4:]}' == '.cn/'    Myfile_checklogin
    Execute Javascript    document.getElementsByClassName('creat-btn_2RJlL')[0].click()
    Element Should Be Visible    ${python_+号按钮_hover}    Python
    Element Should Be Visible    ${python_+号按钮_hover}    硬件




# la
#     Click Element    css:.btn_3WmFh.download_btn_3MC2e
#     Win Wait    另存为    \    2
#     Win Exists    另存为
#     Win Active    另存为
#     Log    ${CURDIR}
#     Sleep    0.5