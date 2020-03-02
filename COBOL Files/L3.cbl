000100 IDENTIFICATION DIVISION.                                         00010009
000200 PROGRAM-ID.    CBLDB21.                                          00020009
000300 AUTHOR.        CSU0127 ADAM DAVIES.                              00030009
000400*INSTALLATION.  CSU.                                              00040009
000500*SECURITY.      UNCLASSIFIED.                                     00050009
000600*DATE-WRITTEN.  FEB 23, 2020.                                     00060009
000700*DATE-COMPILED.                                                   00070009
000710*****************************************************             00071009
000720*   PROGRAM IS HOW TO ADD TO THE SAME LINE FOR PRINT*             00072009
000730*****************************************************             00073009
000800                                                                  00080009
000900 ENVIRONMENT DIVISION.                                            00090009
001000*                                                                 00100009
001100 CONFIGURATION SECTION.                                           00110009
001200 SOURCE-COMPUTER.                                                 00120009
001300     Z13                                                          00130009
001400     WITH DEBUGGING MODE                                          00140009
001500     .                                                            00150009
001600                                                                  00160009
001700 OBJECT-COMPUTER.  IBM-Z13.                                       00170009
001800                                                                  00180009
001900 INPUT-OUTPUT SECTION.                                            00190009
002000 DATA DIVISION.                                                   00200009
002100 WORKING-STORAGE SECTION.                                         00210009
002200                                                                  00220009
002300*****************************************************             00230009
002400*   DATA VARS FOR PRINTING OUT AN MESSAGE           *             00240009
002500*****************************************************             00250009
002600                                                                  00260009
002700 01  WS-PRINT-REC.                                                00270009
002800     05  TEXT-HERE             PIC X(040).                        00280009
002810     05  TEXT2-HERE            PIC X(040).                        00281009
002820     05  TEXT3-HERE            PIC X(040).                        00282009
002900                                                                  00290009
003000 PROCEDURE DIVISION.                                              00300009
003100                                                                  00310009
003200*****************************************************             00320009
003300*   MAIN PROGRAM ROUTINE                            *             00330009
003400*****************************************************             00340009
003500 010-PROG-START.                                                  00350009
003600     PERFORM 300-PRINT-A-LINE                                     00360009
003700     .                                                            00370009
003800                                                                  00380009
003801*****************************************************             00380109
003802*   THIS IS TO MOVE DIFRENT VARS TO SAME OUTPUTLINE *             00380209
003803*****************************************************             00380309
003900 300-PRINT-A-LINE.                                                00390009
004000     MOVE "HELLO WORLD" TO  TEXT-HERE                             00400009
004100     PERFORM 700-PRINT-LINE                                       00410009
004200     .                                                            00420009
004300                                                                  00430009
004400 700-PRINT-LINE.                                                  00440009
004410     MOVE "WELCOME TO COBOL" TO TEXT2-HERE                        00441009
004500     PERFORM 750-WRITE                                            00450009
004600     .                                                            00460009
004700                                                                  00470009
004800 750-WRITE.                                                       00480009
004900     DISPLAY WS-PRINT-REC                                         00490009
005000     .                                                            00500009
005100                                                                  00510009
