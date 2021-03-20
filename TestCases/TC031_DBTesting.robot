*** Settings ***
Library    DatabaseLibrary
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
#Create Employee Table
#    ${output}=    Execute SQL String  Create table Employee(id integer, first_name varchar(20), last_name varchar(20));
#    log to console      ${output}
#    should be equal as strings      ${output}       None

#Inserting Single Record in Employee Table
#    ${output}=     Execute SQL String   Insert into Employee Values(101,"Jhon","Smith");
#    log to console      ${output}
#    should be equal as strings      ${output}       None

#Inserting Multiple Records in Employee Table
#    ${output}=     Execute SQL Script   ./TestData/mydb_employee_insertData.sql
#    log to console      ${output}
#    should be equal as strings      ${output}       None

#Update Record in Employee Table
#    ${output}=      execute sql string    Update mydb.Employee set first_name="Tom" where id=104
#    log to console    ${output}
#    should be equal as strings    ${output}     None

Display All Records from Employee Table
    @{AllRecords}=  query    Select * from mydb.Employee;
    log to console    many      @{AllRecords}

Check if Record exists in mydb DB
    ${output}=      execute sql string    Select * from Employee where first_name="David";
    log to console      ${output}
    should be equal as strings      ${output}       None

Check if exists or not in mydb DB
    check if exists in database    Select * from Employee where first_name="David";
    check if not exists in database    Select * from Employee where first_name="Sarjerao";

Check if Table exists in mydb DB
    table must exist    Employee

Check if Record Not exists in Employee Table
    row count is 0    Select * from Employee where first_name="Sarjerao";

Check Number of Records exists in Employee Table
    row count is equal to x   Select * from Employee where first_name="David";      1

Check Number of Records are Greter Than X in Employee Table
    row count is greater than x    Select * from Employee where first_name="David";      0

Check Number of Records are Less Than X in Employee Table
    row count is less than x    Select * from Employee where first_name="David";      5

#Delete All Records from Employee Table
#    ${output}=      execute sql string    Delete from mydb.Employee;
#    log to console    ${output}
#    should be equal as strings    ${output}     None