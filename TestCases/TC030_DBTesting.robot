*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}       mydb
${DBUser}       root
${DBPass}       root
${DBHost}       127.0.0.1
${DBPort}       3306

*** Test Cases ***
Create Employee Table
    ${output}=    Execute SQL String  Create table Employee(id integer, first_name varchar(20), last_name varchar(20));
    log to console      ${output}
    should be equal as strings      ${output}       None

Inserting Data in Employee Table
    ${output}=     Execute SQL String   Insert into Employee(101,"Jhon","Smith");
    log to console      ${output}
    should be equal as strings      ${output}       None

Inting Multiple Records
    ${output}=     Execute SQL Script   ./TestData/mydb_employee_insertData.sql
    log to console      ${output}
    should be equal as strings      ${output}       None
