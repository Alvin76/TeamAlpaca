000100 IDENTIFICATION DIVISION.                                         00010001
000200 PROGRAM-ID.    CBLDB21.                                          00020002
000300 AUTHOR.        CSU0127 ADAM DAVIES.                              00030037
000400*INSTALLATION.  CSU.                                              00040004
000500*SECURITY.      UNCLASSIFIED.                                     00050002
000600*DATE-WRITTEN.  AUG 25, 2017.                                     00060017
000700*DATE-COMPILED.                                                   00070002
000710*****************************************************             00071041
000720*This How to set up 1/2 of the COBOL file           *             00072041
000000*The top half of this program is to tell the z/OS   *             00000000
000000*What this program will do.                         *             00000000
000730*****************************************************             00073041
000800                                                                  00080002
000900 ENVIRONMENT DIVISION.                                            00090002
001000*                                                                 00100002
001100 CONFIGURATION SECTION.                                           00110006
001200 SOURCE-COMPUTER.                                                 00120015
001300     Z13                                                          00130015
001400     WITH DEBUGGING MODE                                          00140015
001500     .                                                            00150015
001600                                                                  00160015
001700 OBJECT-COMPUTER.  IBM-Z13.                                       00170006
001800*SPECIAL-NAMES.                                                   00180014
001900*    CURRENCY SIGN IS EURO                                        00190014
002000*    DECIMAL POINT IS COMMA.                                      00200014
002100                                                                  00210007
002200 INPUT-OUTPUT SECTION.                                            00220002
002300*FILE-CONTROL.                                                    00230039
002400*    SELECT PRINT-FILE         ASSIGN TO UT-S-REPORT.             00240039
002500*                                                                 00250002
000000********************************************************          00000000
000000*THIS IS WHAT YOU WILL SEE IN THE ENVIRONMENT DIVISION *          00000000
000000*NOT ALL PARTS ARE ALWAYS NEEDED BUT IT IS GOOD TO KNOW*          00000000
000000********************************************************          00000000 
