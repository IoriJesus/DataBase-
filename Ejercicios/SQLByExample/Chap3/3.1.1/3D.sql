REM D)
REM Based on the result of the following SQL statement, 
REM describe the purpose of the LTRIM
REM and RTRIM functions. 

SELECT zip, LTRIM(zip, '0'), RTRIM(ZIP, '4')
 FROM zipcode
 ORDER BY zip;