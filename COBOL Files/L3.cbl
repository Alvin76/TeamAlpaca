000100 IDENTIFICATION DIVISION.                                         00010009
000200 PROGRAM-ID.    CBLDB21.                                          00020009
000300 AUTHOR.        CSU0127 ADAM DAVIES.                              00030009
000400*INSTALLATION.  CSU.                                              00040009
000500*SECURITY.      UNCLASSIFIED.                                     00050009
000600*DATE-WRITTEN.  FEB 23, 2020.                                     00060009
000700*DATE-COMPILED.                                                   00070009
000710*****************************************************             00071009
000720*   PROGRAM IS ADD A MESSAGE EACH TIME YOU PRINT*             00072009
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
006600     10  FILLER                PIC X(02) VALUE SPACES.            00660027
006700     10  H-DATE.                                                  00670024
006800         15  H-MM              PIC 9(02).                         00680027
006900         15  H-SLASH1          PIC X(01) VALUE '/'.               00690027
007000         15  H-DD              PIC 9(02).                         00700027
007100         15  H-SLASH2          PIC X(01) VALUE '/'.               00710027
007200         15  H-YY              PIC 9(02).                         00720027
007300     10  FILLER                PIC X(03) VALUE SPACES.            00730027
007400     10  H-TIME.                                                  00740024
007500         15  H-HH              PIC Z9.                            00750027
007600         15  H-COLON           PIC X(01) VALUE ':'.               00760027
007700         15  H-MN              PIC 9(02).                         00770027
007800     10  FILLER                PIC X(04) VALUE SPACES.            00780027
007900     10  FILLER                PIC X(40) VALUE                    00790027
008000         'PROGRAM 1, (27) ADAM DAVIES            '.               00800037
008100     10  FILLER                PIC X(05) VALUE SPACES.            00810027
008200     10  FILLER                PIC X(06) VALUE 'PAGE: '.          00820027
008300     10  H-PAGE                PIC Z(03).                         00830027
008400                                                                  00840012
008500 PROCEDURE DIVISION.                                              00850002
008600                                                                  00860002
008700*****************************************************             00870002
008800*   MAIN PROGRAM ROUTINE                            *             00880002
008900*****************************************************             00890002
009000 010-PROG-START.                                                  00900023
009100*    OPEN OUTPUT PRINT-FILE                                       00910039
009200     PERFORM 850-GET-DATE                                         00920024
009300     PERFORM 800-PRINT-HEADINGS                                   00930024
009400     PERFORM 300-PRINT-A-LINE                                     00940037
009500     .                                                            00950024
009600                                                                  00960024
009700 050-PROG-END.                                                    00970023
009800*    CLOSE PRINT-FILE                                             00980039
009900     GOBACK                                                       00990026
010000     .                                                            01000026
010100                                                                  01010024
010200*****************************************************             01020002
010300*   LIST ALL FIELDS IN TABLE                        *             01030002
010400*****************************************************             01040002
010500 300-PRINT-A-LINE.                                                01050023
010600     MOVE "HELLO WORLD" TO  TEXT-HERE                             01060037
010700     PERFORM 700-PRINT-LINE                                       01070024
010800     .                                                            01080002
010900                                                                  01090024
011000 700-PRINT-LINE.                                                  01100024
011100     PERFORM 750-WRITE                                            01110024
011200     IF WS-LINE-COUNT > 50                                        01120024
011300         PERFORM 800-PRINT-HEADINGS                               01130024
011400     END-IF                                                       01140024
011500     .                                                            01150024
011600                                                                  01160024
011700 750-WRITE.                                                       01170024
011800*    WRITE PRINT-REC FROM WS-PRINT-REC                            01180039
011900*      AFTER ADVANCING WS-SPACING LINES                           01190039
012000*    END-WRITE                                                    01200039
012100     DISPLAY WS-PRINT-REC                                         01210039
012200*    ADD WS-SPACING TO WS-LINE-COUNT                              01220039
012300*    MOVE 2 TO WS-SPACING                                         01230039
012400     MOVE SPACES TO WS-PRINT-REC                                  01240024
012500     .                                                            01250024
012600                                                                  01260024
012700 800-PRINT-HEADINGS.                                              01270024
012800     ADD 1 TO WS-PAGE                                             01280024
012900     MOVE WS-PAGE TO H-PAGE                                       01290024
013000*    WRITE PRINT-REC FROM HEADING-1                               01300039
013100*      AFTER ADVANCING PAGE                                       01310039
013200*    END-WRITE                                                    01320039
013300     DISPLAY HEADING-1                                            01330040
013400*    MOVE 2 TO WS-SPACING                                         01340040
013500*    PERFORM 750-WRITE                                            01350040
013600     MOVE 2 TO WS-SPACING                                         01360024
013700     MOVE 0 TO WS-LINE-COUNT                                      01370024
013800     .                                                            01380024
013900                                                                  01390024
014000 850-GET-DATE.                                                    01400024
014100     ACCEPT WS-DATE FROM DATE                                     01410024
014200     MOVE MM TO H-MM                                              01420024
014300     MOVE DD TO H-DD                                              01430024
014400     MOVE YY TO H-YY                                              01440024
014500     ACCEPT WS-TIME FROM TIME                                     01450024
014600     MOVE HH TO H-HH                                              01460024
014700     MOVE MN TO H-MN                                              01470024
014800     .                                                            01480024
014900                                                                  01490024
