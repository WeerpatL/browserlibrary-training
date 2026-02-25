*** Settings ***
Library    Browser
Library     String


Variables   ${CURDIR}/settings/setting.yaml
Variables    ${CURDIR}/translation/${LANG.lower()}.yaml

# keywords
Resource    ${CURDIR}/../keywords/common/common.robot
Resource    ${CURDIR}/../keywords/features/login_feature.robot
Resource    ${CURDIR}/../keywords/features/product_feature.robot
Resource    ${CURDIR}/../keywords/pages/login_page.robot
Resource    ${CURDIR}/../keywords/pages/product_page.robot

# locator
Resource    ${CURDIR}/locators/common_locator.robot
Resource    ${CURDIR}/locators/login_page_locator.robot
Resource    ${CURDIR}/locators/product_page_locator.robot