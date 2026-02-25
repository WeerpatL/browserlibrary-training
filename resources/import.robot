*** Settings ***
Library    Browser


Variables   ${CURDIR}/settings/setting.yaml


Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/pages/login_page.robot
Resource    ${CURDIR}/../locators/login_page_locator.robot