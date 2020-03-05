//CSU0127C JOB 'C3156',REGION=0M,CLASS=A,MSGCLASS=A,TIME=(0,5),         00010042
//     LINES=5,MSGLEVEL=(0,0),NOTIFY=&SYSUID                            00020000
//JOBLIB   DD   DSN=CSU.PUBLIC.LOADLIB,DISP=SHR                         00030003
//         SET  ID=127                                                  00040043
//         SET  SOURCE=L1                                               00060048
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
//*THIS IS FOR FILES ONLY DO NOT ENABLE WITH OUT THE FILE!!             00000000
//*YINFILE   DD DSN=CSU0&ID..C3156.COBOL(ARGS),DISP=SHR                 00200047
//*YINFILE   DD DSN=CSU.PUBLIC.DATA(ARGS),DISP=SHR                      00210039
//MYREPORT   DD SYSOUT=*,OUTLIM=2500                                    00220003
//SYSUDUMP   DD DUMMY                                                   00230003
//SYSDUMP    DD DUMMY                                                   00240003
// ENDIF                                                                00250000
//                                                                      00260000
//*THIS IS REQUIRED TO RUN ANY COBOL PROGRAM!                           00330047
//*THE PROGRAMS WILL NOT RUN WITHOUT THIS FILE!                         00340047
//*NOTE! CHANGE THE NUMBER TO YOUR ID NUMBER TO RUN                     00340047
//*THE SET SOURCE MUST BE SET TO THE PROGRAMS NAME                      00340047
//*THIS PROGRAM HAS BEEN EDITED TO RUN OUR COBOL PROGRAMS OTHER...      00340047
//*... MIGHT NOT WORK OR RUN. NOTE! WE WILL NOT COVER JCL LEARNING.     00340047
