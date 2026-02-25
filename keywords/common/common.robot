*** Keywords ***
Default test setup
    common.Open dopee browser


Open dopee browser
    Browser.Open browser 
    ...     url=${URL_PATH}  
    ...     headless=${HEADLESS}

