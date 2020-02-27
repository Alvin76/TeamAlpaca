//CSU0127C JOB 'C3156',REGION=0M,CLASS=A,MSGCLASS=A,TIME=(0,5),         00010042
//     LINES=5,MSGLEVEL=(0,0),NOTIFY=&SYSUID                            00020000
//JOBLIB   DD   DSN=CSU.PUBLIC.LOADLIB,DISP=SHR                         00030003
//         SET  ID=127                                                  00040043
//*   SET QQ ABOVE ONE TIME - SET NEXT FOR EACH PROGRAM                 00050039
//         SET  SOURCE=L1                                               00060048
//*        SET  SOURCE=TOTALS                                           00070028
//         SET  PRGNAME=PRGM&ID                                         00080038
//COMPILE  EXEC IGYWCL,GOPGM=&PRGNAME,                                  00090000
//   PGMLIB='CSU.PUBLIC.LOADLIB'                                        00100000
//SYSLIB   DD   DSN=CSU.PUBLIC.COPYLIB,DISP=SHR                         00110000
//COBOL.SYSPRINT DD SYSOUT=*                                            00120000
//SYSIN    DD   DSN=CSU.PUBLIC.DATA(OPTIONX),DISP=SHR                   00130046
//         DD   DSN=CSU0&ID..C3156.COBOL(&SOURCE),DISP=SHR              00140046
//LKED.SYSIN   DD DUMMY                                                 00150003
//LKED.SYSLMOD DD DSN=CSU.PUBLIC.LOADLIB(&PRGNAME),DISP=SHR             00160003
//*                                                                     00170000
// IF (RC = 00) THEN                                                    00180003
//STEP020  EXEC PGM=&PRGNAME                                            00190000
//*YINFILE   DD DSN=CSU0&ID..C3156.COBOL(MKTSAMP),DISP=SHR              00200047
//*YINFILE   DD DSN=CSU.PUBLIC.DATA(MARKET),DISP=SHR                    00210039
//MYREPORT   DD SYSOUT=*,OUTLIM=2500                                    00220003
//SYSUDUMP   DD DUMMY                                                   00230003
//SYSDUMP    DD DUMMY                                                   00240003
// ENDIF                                                                00250000
//                                                                      00260000
//* NOTE OF CHANGES TO JCL FILE                                         00270041
//* 2020-02-20 ~ DATE OF CHANGE                                         00271041
//* CHANGES C3111 TO C3156                                              00280041
//* CHANGED QQ TO 27 IT MIGHT NEED TO BE FIXED AS NUMBER IS 0127 != 002700290041
//* CHANGE NUMBER CSU00&ID TO CSU0&ID AND ID = 127                      00300043
//* JCL IS ABLE TO RUN WITH THESES CHANGES                              00310044
//* THERE IS FILE READ ERRORS BASIC IS NOT TAKING IN DATA LOOKING @ JCL 00320045
//* LINE 2000                                                           00330047
//*                                                                     00340047
