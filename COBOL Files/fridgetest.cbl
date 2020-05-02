001100 ENVIRONMENT DIVISION.                                            00110000
001200 CONFIGURATION SECTION.                                           00120002
001300 SOURCE-COMPUTER.                                                 00130002
001400     Z13                                                          00140002
001500     WITH DEBUGGING MODE                                          00150002
001600     .                                                            00160002
001700                                                                  00170002
001800 INPUT-OUTPUT SECTION.                                            00180000
001900                                                                  00190001
002000 FILE-CONTROL.                                                    00200000
002100     SELECT FRIDGE               	 ASSIGN TO MYINFILE.            00210022
002200     SELECT PRINT-FILE             ASSIGN TO MYREPORT.            00220022
002300                                                                  00230000
002400 DATA DIVISION.                                                   00240000
002500 FILE SECTION.                                                    00250000
002600                                                                  00260000
002700 FD  FRIDGE                                                       00270000
002800     RECORDING MODE IS F.                                         00280000
002900 01  FRIDGE-REC.                                                  00290001
003000     10  FILLER                    PIC X(080).                    00300022
003100                                                                  00310000
003200 FD  PRINT-FILE                                                   00320000
003300     RECORDING MODE IS F.                                         00330000
003400 01  PRINT-REC.                                                   00340000
003500     10  FILLER                    PIC X(132).                    00350022
003600                                                                  00360000
003700 WORKING-STORAGE SECTION.                                         00370000
003800                                                                  00380000
003900 01  WS-COUNTERS-FLAGS.                                           00390000
004000     10  EOF-FLAG                  PIC X(03) VALUE "NO".          00400022
004100     10  WS-SPACING                PIC 9(01) VALUE 2.             00410022
004200     10  REC-COUNT                 PIC 9(05) VALUE ZERO.          00420022
004300     10  WS-LINE-COUNT             PIC 9(03) VALUE 0.             00430022
004400     10  WS-PAGE                   PIC 9(03) VALUE 0.             00440022
004500                                                                  00450015
004510 01  FRIDGE-FEILDS.                                               00451028
004520     10  FR-ITEM-NAME              PIC X(17).                     00452029
004530     10  FR-CATEGORY               PIC X(10).                     00453029
004531     10  FR-UNITS                  PIC S9(05)    VALUE 0.         00453129
004540     10  FR-COST                   PIC S9(03)V99 VALUE 0.         00454029
004541     10  FR-UNITS-DAY              PIC S9(03)    VALUE 0.         00454129
004542     10  FR-WASTE-DAY              PIC S9(03)    VALUE 0.         00454229
004541     10  FR-UNIT-TOTAL             PIC S9(05)    VALUE 0.         00454129
004542     10  FR-INVENTORY-PRICE        PIC S9(03)V99 VALUE 0.         00454229
004541     10  FR-TOTAL-WASTE            PIC S9(03)V99 VALUE 0.         00454129
004542     10  FR-WEEK-ORDER             PIC S9(03)V99 VALUE 0.         00454229
004600
004700                                                                  00470005
004800 01  WS-PRINT-REC                  VALUE SPACES.                  00480022
004810     05  PR-FIDGE.                                                00481028
004900         10  FILLER                PIC X(02).                     00490025
005000         10  PR-ITEM-NAME          PIC X(17).                     00500025
005100         10  FILLER                PIC X(02).                     00510025
005200         10  PR-CATEGORY           PIC X(10).                     00520028
005300         10  FILLER                PIC X(02).                     00530025
005400         10  PR-UNITS              PIC ZZZZ9.                     00540025
005500         10  FILLER                PIC X(02).                     00550025
005600         10  PR-COST               PIC $ZZ9.99                    00560025
005700         10  FILLER                PIC X(02).                     00570025
005800         10  PR-UNITS-DAY          PIC ZZ9.                       00580030
005900         10  FILLER                PIC X(02).                     00590025
005910         10  PR-WASTE-DAY          PIC ZZ9.                       00591025
005920         10  FILLER                PIC X(27).                     00592029
005930
006000 PROCEDURE DIVISION.                                              00850002
008600                                                                  00860002
008700*****************************************************             00870002
008800*   MAIN PROGRAM ROUTINE                            *             00880002
008900*****************************************************             00890002
009000 010-START-HERE.
009010     OPEN INPUT FRIDGE     										00900017
009020     OPEN OUTPUT PRINT-FILE
009030     PERFORM 100-READ-INPUT
009040     PERFORM 150-PROCESS-DATA
009050       UNTIL EOF-FLAG = "YES"
009060     PERFORM 900-PRINT-FINAL-TOTALS
009400     .                                                             00940017
009600
009610 100-READ-INPUT.
009620     READ FRIDGE INTO FRIDGE-REC
009630       AT END
009640     MOVE "YES" TO EOF-FLAG
009650     END-READ
009660     ADD 1 TO REC-COUNT
009670     .
009680
009690 150-PROCESS-DATA.
009700     MOVE FR-ITEM-NAME TO PR-ITEM-NAME
009710     MOVE FR-CATEGORY TO PR-CATEGORY
009720     MOVE FR-UNITS TO PR-UNITS
009730     MOVE FR-COST TO PR-COST
009740     MOVE FR-UNITS-DAY TO PR-UNITS-DAY
009750     MOVE FR-WASTE-DAY TO PR-WASTE-DAY
009760     PERFORM 400-CALCULATE-TOTALS
009770     PERFORM 100-READ-INPUT
009780     .
009790
010900 400-CALCULATE-TOTALS                                             01090017
010901     *PERFROM LOOP HERE                                           01090118
010910     COMPUTE FR-UNIT-TOTAL = FR-COST * PR-UNITS                   01091018
010920     COMPUTE FR-INVENTORY-PRICE = FR-INVENTORY-PRICE +
             FR-COST * PR-UNITS                                         01092018
010921     COMPUTE DAYS = INVENTORY / (FR-UNITS-DAY + FR-WASTE-DAY)     01092118
010930     COMPUTE INVENTORY = INVENTORY -
             (FR-UNITS-DAY + FR-WASTE-DAY)                              01093018
010940     COMPUTE FR-WEEK-ORDER = (FR-UNITS-DAY + FR-WASTE-DAY) * 7    01094018
           .

011000 700-PRINT-LINE.                                                  01100017
011100     PERFORM 750-WRITE                                            01110017
011500     .                                                            01150017
011600                                                                  01160017
030600 750-WRITE.                                                       03060012
030700     WRITE PRINT-REC FROM WS-PRINT-REC                            03070012
030800       AFTER ADVANCING WS-SPACING LINES                           03080012
030900     END-WRITE                                                    03090012
031000     ADD WS-SPACING TO WS-LINE-COUNT                              03100012
031100     MOVE 2 TO WS-SPACING                                         03110012
031200     MOVE SPACES TO WS-PRINT-REC                                  03120012
031300     .                                                            0600005
033000
033800 900-PRINT-FINAL-TOTALS.                                          03380060
033900     MOVE FR-UNIT-TOTAL TO PR-UNITS                               03390060
034000     MOVE FR-INVENTORY-PRICE TO PR-COST                           03400060
034100     MOVE FR-TOTAL-WASTE TO PR-UNITS-DAY                          03410060
034200     MOVE FR-WEEK-ORDER TO PR-WASTE-DAY                           03420060
034500     MOVE '    FINAL TOTALS' TO PR-ITEM-NAME                      03450060
034600     PERFORM 700-PRINT-LINE                                       03460060
034700     .                                                            03470060
