000100 IDENTIFICATION DIVISION.                                         00010012
000200 PROGRAM-ID.    CBLDB21.                                          00020012
000300 AUTHOR.        CSU0127 ADAM DAVIES.                              00030012
000400*INSTALLATION.  CSU.                                              00040012
000500*SECURITY.      UNCLASSIFIED.                                     00050012
000600*DATE-WRITTEN.  FEB 23, 2020.                                     00060012
000700*DATE-COMPILED.                                                   00070012
000710*****************************************************             00071012
000720*THIS PROGRAM WILL DO "ADD" Function  *                           00072012
000730*****************************************************             00073012
000800                                                                  00080012
000900 ENVIRONMENT DIVISION.                                            00090012
001000*                                                                 00100012
001100 CONFIGURATION SECTION.                                           00110012
001200 SOURCE-COMPUTER.                                                 00120012
001300     Z13                                                          00130012
001400     WITH DEBUGGING MODE                                          00140012
001500     .                                                            00150012
001600                                                                  00160012
001700 OBJECT-COMPUTER.  IBM-Z13.                                       00170012
001800                                                                  00180012
001900 INPUT-OUTPUT SECTION.                                            00190012
002000 DATA DIVISION.                                                   00200012
002100 WORKING-STORAGE SECTION.                                         00210012
002200                                                                  00220012
002300*****************************************************             00230012
002400*   DATA VARS FOR PRINTING OUT AN MESSAGE           *             00240012
002500*****************************************************             00250012
002600                                                                  00260012
002700 01  WS-PRINT-REC.                                                00270012
002800     01  NUM1                  PIC 9(002).                        00280012
002810     01  NUM2                  PIC 9(002).                        00281012
002820     01  NUM3                  PIC 9(002).                        00282012
002900                                                                  00290012
003000 PROCEDURE DIVISION.                                              00300012
003100                                                                  00310012
003200*****************************************************             00320012
003300*   MAIN PROGRAM ROUTINE                            *             00330012
003400*****************************************************             00340012
003500 010-PROG-START.                                                  00350012
003600     PERFORM 300-PRINT-A-LINE                                     00360012
003700     .                                                            00370012
003800                                                                  00380012
003801*****************************************************             00380112
003802*   THIS IS TO MOVE DIFRENT VARS TO SAME OUTPUTLINE *             00380212
003803*****************************************************             00380312
003900 300-PRINT-A-LINE.                                                00390012
004000     DISPLAY "ENTER NUMBER 1".                                    00400012
004010     ACCEPT N1.                                                   00401012
004020     DISPLAY "ENTER NUMBER 2".                                    00402012
004100     ACCEPT N2.                                                   00410012
004110     ADD N1, N2 GIVING N3.                                        00411012
004120     DISPLAY "THE TOTAL IS ", N3.                                 00412012
004200                                                                  00420012
004300                                                                  00430012
004400 700-PRINT-LINE.                                                  00440012
004500     PERFORM 750-WRITE                                            00450012
004600     .                                                            00460012
004700                                                                  00470012
004800 750-WRITE.                                                       00480012
004900     DISPLAY WS-PRINT-REC                                         00490012
005000     .                                                            00500012
005100                                                                  00510012
