FOR /F "tokens=* USEBACKQ" %%F IN (`aws configure get aws_access_key_id`) DO (
SET AWS_ACCESS_KEY_ID=%%F
)
ECHO AWS_ACCESS_KEY_ID=%AWS_ACCESS_KEY_ID%

FOR /F "tokens=* USEBACKQ" %%F IN (`aws configure get aws_secret_access_key`) DO (
SET AWS_SECRET_ACCESS_KEY=%%F
)

set SOURCE_CODE_DIR=C:\dev\md_code\sam-api-election\electorImport
set AWS_DEFAULT_REGION=eu-west-1
set PACKAGE_NAME=mp-aws-sam-packages