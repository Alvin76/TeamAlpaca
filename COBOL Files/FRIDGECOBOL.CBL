000100 IDENTIFICATION DIVISION.                                         00010001
000200 PROGRAM-ID.    CBLDB21.                                          00020002
000300 AUTHOR.        CSU0127 ADAM DAVIES, TAYLOR WOODS, EVAN JONES.    00030037
000400*INSTALLATION.  CSU.                                              00040004
000500*SECURITY.      UNCLASSIFIED.                                     00050002
000600*DATE-WRITTEN.  MAY 4, 2020.                                      00060043
000700*DATE-COMPILED. MAY 5, 2020.                                      00070043
000710*****************************************************             00080041
000720*PROGRAM IS TO MAKE A RECORD AND STORE IT           *             00090041
000730*****************************************************             00100041
000800                                                                  00110002
001100 ENVIRONMENT DIVISION.                                            00120000
001200 CONFIGURATION SECTION.                                           00130002
001300 SOURCE-COMPUTER.                                                 00140002
001400     Z13                                                          00150002
001500     WITH DEBUGGING MODE                                          00160002
001600     .                                                            00170002
001700                                                                  00180002
001800 INPUT-OUTPUT SECTION.                                            00190000
001900                                                                  00200001
002000 FILE-CONTROL.                                                    00210000
002100     SELECT FRIDGE               	 ASSIGN TO MYINFILE.            00220022
002200     SELECT PRINT-FILE             ASSIGN TO MYREPORT.            00230022
002300                                                                  00240000
002400 DATA DIVISION.                                                   00250000
002500 FILE SECTION.                                                    00260000
002600                                                                  00270000
002700 FD  FRIDGE                                                       00280000
002800     RECORDING MODE IS F.                                         00290000
002900 01  FRIDGE-REC.                                                  00300001
003000     10  FILLER                    PIC X(080).                    00310022
003100                                                                  00320000
003200 FD  PRINT-FILE                                                   00330000
003300     RECORDING MODE IS F.                                         00340000
003400 01  PRINT-REC.                                                   00350000
003500     10  FILLER                    PIC X(132).                    00360022
003600                                                                  00370000
003700 WORKING-STORAGE SECTION.                                         00380000
003800                                                                  00390000
003900 01  WS-COUNTERS-FLAGS.                                           00400000
004000     10  EOF-FLAG                  PIC X(03) VALUE 'NO'.          00410043
004100     10  WS-SPACING                PIC 9(01) VALUE 2.             00420022
004200     10  REC-COUNT                 PIC 9(05) VALUE ZERO.          00430022
004300     10  WS-LINE-COUNT             PIC 9(03) VALUE 0.             00440022
004400     10  WS-PAGE                   PIC 9(03) VALUE 0.             00450022
004500                                                                  00460015
004510 01  FRIDGE-FEILDS.                                               00470028
004520     10  FR-ITEM-NAME              PIC X(17).                     00480029
004530     10  FR-CATEGORY               PIC X(10).                     00490029
004531     10  FR-UNITS                  PIC S9(05)    VALUE 0.         00500029
004540     10  FR-COST                   PIC S9(03)V99 VALUE 0.         00510029
004541     10  FR-UNITS-DAY              PIC S9(03)    VALUE 0.         00520029
004542     10  FR-WASTE-DAY              PIC S9(03)    VALUE 0.         00530029
004541     10  FR-UNIT-TOTAL             PIC S9(05)    VALUE 0.         00540029
004542     10  FR-INVENTORY-PRICE        PIC S9(03)V99 VALUE 0.         00550029
004541     10  FR-TOTAL-WASTE            PIC S9(03)V99 VALUE 0.         00560029
004542     10  FR-WEEK-ORDER             PIC S9(03)V99 VALUE 0.         00570029
004700                                                                  00580005
004800 01  WS-PRINT-REC                  VALUE SPACES.                  00590022
004810     05  PR-FIDGE.                                                00600028
004900         10  FILLER                PIC X(02).                     00610025
005000         10  PR-ITEM-NAME          PIC X(17).                     00620025
005100         10  FILLER                PIC X(02).                     00630025
005200         10  PR-CATEGORY           PIC X(10).                     00640028
005300         10  FILLER                PIC X(02).                     00650025
005400         10  PR-UNITS              PIC ZZZZ9.                     00660025
005500         10  FILLER                PIC X(02).                     00670025
005600         10  PR-COST               PIC $ZZ9.99.                   00680043
005700         10  FILLER                PIC X(02).                     00690025
005800         10  PR-UNITS-DAY          PIC ZZ9.                       00700030
005900         10  FILLER                PIC X(02).                     00710025
005910         10  PR-WASTE-DAY          PIC ZZ9.                       00720025
005920         10  FILLER                PIC X(27).                     00730029
006000 PROCEDURE DIVISION.                                              00740002
008600                                                                  00750002
008700*****************************************************             00760002
008800*   MAIN PROGRAM ROUTINE                            *             00770002
008900*****************************************************             00780002
009000 010-START-HERE.                                                  00790043
009010     OPEN INPUT FRIDGE     										                             00800043
009020     OPEN OUTPUT PRINT-FILE                                       00810043
009030     PERFORM 100-READ-INPUT                                       00820043
009040     PERFORM 150-PROCESS-DATA                                     00830043
009050       UNTIL EOF-FLAG = "YES"                                     00840043
009060     PERFORM 900-PRINT-FINAL-TOTALS                               00850043
009400     .                                                            00860043
009600                                                                  00870043
009610 100-READ-INPUT.                                                  00880043
009620     READ FRIDGE INTO FRIDGE-REC                                  00890043
009630       AT END                                                     00900043
009640     MOVE "YES" TO EOF-FLAG                                       00910043
009650     END-READ                                                     00920043
009660     ADD 1 TO REC-COUNT                                           00930043
009670     .                                                            00940043
009680                                                                  00950043
009690 150-PROCESS-DATA.                                                00960043
009700     MOVE FR-ITEM-NAME TO PR-ITEM-NAME                            00970043
CC9710     MOVE FR-CATEGORY TO PR-CATEGORY                              00980043
009720     MOVE FR-UNITS TO PR-UNITS                                    00990043
009730     MOVE FR-COST TO PR-COST                                      01000043
009740     MOVE FR-UNITS-DAY TO PR-UNITS-DAY                            01010043
CC9750     MOVE FR-WASTE-DAY TO PR-WASTE-DAY                            01020043
009760     PERFORM 400-CALCULATE-TOTALS                                 01030043
009770     PERFORM 100-READ-INPUT                                       01040043
009780     .                                                            01050043
009790                                                                  01060043
010900 400-CALCULATE-TOTALS.                                            01070043
010910     COMPUTE FR-UNIT-TOTAL = FR-COST * PR-UNITS                   01080018
010911     COMPUTE FR-WASTE-TOTAL = FR-WASTETOTAL +  FR-WASTE-DAY       01090043
010912* PR-UNITS                                                        01100043
010920     COMPUTE FR-INVENTORY-PRICE = FR-INVENTORY-PRICE +            01110043
010921       FR-COST * PR-UNITS                                         01120043
010922     COMPUTE DAYS = FR-UNITS / (FR-UNITS-DAY + FR-WASTE-DAY)      01130043
010930     COMPUTE FR-UNITS = FR-UNITS -                                01140043
010935       (FR-UNITS-DAY + FR-WASTE-DAY)                              01150043
010940     COMPUTE FR-WEEK-ORDER = (FR-UNITS-DAY + FR-WASTE-DAY) * 7    01160018
010941     .                                                            01170043
010942                                                                  01180043
011000 700-PRINT-LINE.                                                  01190017
011100     PERFORM 750-WRITE                                            01200017
011500     .                                                            01210017
011600                                                                  01220017
030600 750-WRITE.                                                       01230012
030700     WRITE PRINT-REC FROM WS-PRINT-REC                            01240012
030800       AFTER ADVANCING WS-SPACING LINES                           01250012
030900     END-WRITE                                                    01260012
031000     ADD WS-SPACING TO WS-LINE-COUNT                              01270012
031100     MOVE 2 TO WS-SPACING                                         01280012
031200     MOVE SPACES TO WS-PRINT-REC                                  01290012
031300     .                                                            01300043
033000                                                                  01310043
033800 900-PRINT-FINAL-TOTALS.                                          01320043
033900     MOVE FR-UNIT-TOTAL TO PR-UNITS                               01330043
034000     MOVE FR-INVENTORY-PRICE TO PR-COST                           01340043
034100     MOVE FR-TOTAL-WASTE TO PR-UNITS-DAY                          01350043
034200     MOVE FR-WEEK-ORDER TO PR-WASTE-DAY                           01360043
034500     MOVE '    FINAL TOTALS' TO PR-ITEM-NAME                      01370043
034600     PERFORM 700-PRINT-LINE                                       01380043
034700     .                                                            01390043
