000100 IDENTIFICATION DIVISION.                                         00010001
000200 PROGRAM-ID.    CBLDB21.                                          00020002
000300 AUTHOR.        CSU0127 ADAM DAVIES.                              00030037
000400*INSTALLATION.  CSU.                                              00040004
000500*SECURITY.      UNCLASSIFIED.                                     00050002
000600*DATE-WRITTEN.  AUG 25, 2017.                                     00060017
000700*DATE-COMPILED.                                                   00070002
000710*****************************************************             00071041
000720*THIS PROGRAM IS TO USE AN "IF" STATMENT            *             00072041
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
002600 DATA DIVISION.                                                   00260002
002700*                                                                 00270002
002800*FILE SECTION.                                                    00280039
002900*FD  PRINT-FILE                                                   00290039
003000*    RECORDING MODE IS F                                          00300039
003100*    LABEL RECORDS ARE OMITTED                                    00310039
003200*    DATA RECORD IS PRINT-REC.                                    00320039
003300*01  PRINT-REC.                                                   00330039
003400*    05  FILLER                PIC X(120).                        00340039
003500*                                                                 00350002
003600 WORKING-STORAGE SECTION.                                         00360002
003700                                                                  00370024
003800 01  WS-COUNTERS-FLAGS.                                           00380024
003900     10  EOF-FLAG              PIC X(03) VALUE "NO ".             00390027
004000     10  WS-SPACING            PIC 9(01) VALUE 2.                 00400027
004100     10  REC-COUNT             PIC 9(05) VALUE ZERO.              00410027
004200     10  WS-LINE-COUNT         PIC 9(03) VALUE 0.                 00420027
004300     10  WS-PAGE               PIC 9(03) VALUE 0.                 00430027
004400                                                                  00440024
004500*****************************************************             00450002
004600*   STRUCTURE FOR PRESIDENT RECORD                  *             00460016
004700*****************************************************             00470002
004800*01  HELLOWORLD-RECORD.                                           00480037
004900*    05  TEXT-HERE             PIC X(120).                        00490037
005000                                                                  00500002
005100 01  WS-PRINT-REC.                                                00510025
005200     05  TEXT-HERE             PIC X(120).                        00520037
005300                                                                  00530002
005400 01  WS-DATE.                                                     00540024
005500     10  YY                    PIC 9(02).                         00550027
005600     10  MM                    PIC 9(02).                         00560027
005700     10  DD                    PIC 9(02).                         00570027
005800                                                                  00580024
005900 01  WS-TIME.                                                     00590024
006000     10  HH                    PIC 9(02).                         00600027
006100     10  MN                    PIC 9(02).                         00610027
006200     10  SS                    PIC 9(02).                         00620027
006300     10  MS                    PIC 9(02).                         00630027
006400                                                                  00640024
006500 01  HEADING-1.                                                   00650024
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
