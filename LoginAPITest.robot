*** Settings ***

Library  RequestsLibrary
Library  HttpLibrary
Library  JsonLibrary
Library  Collections

*** Variables ***


*** Test Cases ***

Test Login and Validate

&{Header}=      Create Dictionary   content-type=application/json  Access-Token=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwczovL3N3ZWV0c3BvdGRpYWJldGVzLmNvbSIsInN1YiI6IlN3ZWV0c3BvdCIsImlhdCI6MTU5MDU0MTMxNywiY29uc2VudFBlcm1pc3Npb24iOiJsaW5rZWRTdWJqZWN0cyIsImRleGNvbUlkIjoiNWQ0ZWZkZTEtNzg4NC00Y2YzLWJlYjctMzllNTM4OGFjNDBkIiwiZXhwIjoxNTkwNjI3NzE3LCJyb2xlIjoiT3duZXIiLCJzdWJqZWN0SWQiOiIxNTk0OTUwNjIwODQ3NDcyNjQwIn0.mSL2pupf_RUpm73VDqjSStzYeZ786auE9bG0UzZ0RFcAYSiCtIzaVL13oEtbs-oxpIhGEeTjL0rlRuB0XK16FLgCKJyGgDLT_wvwGXfXYlA9CpCAXb0SgnK3XvCxWKzZ7NxmTCBA7sB8xo2Ju1b5RsRe06z4aYn7ZiAawE_2WHh2ZFUOcj1MijfFwBwoWT2V2MKHMvXMNqHTF-YNe48-hQstTsYdS0uMtoUAjKX_obChVukqa_GBLHHyN9eNEJTSCLIM9i_jZ0znCuhxGPDLoR5hUwCbTPuVwxtgmEfAX-n4wklI3rUzhFNS2PPQwi94iXmbgIu_G2ZdR8F5KRuhvw
Create Session  Dexcom  https://clarity.dexcom.com/
${response}=    Post Request     Dexcom    /api/subject/1594950620847472640/analysis_session  ${Header}=&{Header}




