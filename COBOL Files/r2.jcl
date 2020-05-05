//CSU0127C JOB 'C3156',REGION=0M,CLASS=A,MSGCLASS=A,TIME=(0,5),         00010042
//     LINES=5,MSGLEVEL=(0,0),NOTIFY=&SYSUID                            00020000
//JOBLIB   DD   DSN=CSU.PUBLIC.LOADLIB,DISP=SHR                         00030003
//***** PLEASE DO NOT EDIT ANYTHING ABOVE THIS LINE ******              00031050
//         SET  ID=127                                                  00040043
//* TAYLOR & EVAN CHANGE THE NUMBER TO YOURS FOR THIS TO WORK!          00050050
//         SET  SOURCE=H1                                               00060052
//* TAYLOR & EVAN THE SOURCE IS THE PROGRAMS NAME                       00061050
//***** PLEASE DO NOT EDIT ANYTHING BELOW THIS LINE ******              00062050
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
//SYINFILE   DD DSN=CSU0&ID..C3156.COBOL(FRIDGE),DISP=SHR               00200054
//*YINFILE   DD DSN=CSU.PUBLIC.DATA(FRIDGE),DISP=SHR                    00210053
//* THIS SHOULD BE THE PUBLIC LIBARY/NOT LOCAL                          00211050
//*YINFILE   DD DSN=CSU.PUBLIC.DATA(MARKET),DISP=SHR                    00212054
//MYREPORT   DD SYSOUT=*,OUTLIM=2500                                    00220003
//SYSUDUMP   DD DUMMY                                                   00230003
//SYSDUMP    DD DUMMY                                                   00240003
// ENDIF                                                                00250000
//                                                                      00260000
