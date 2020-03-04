000100 IDENTIFICATION DIVISION.                                         00010001
000200 PROGRAM-ID.    CBLDB21.                                          00020002
000300 AUTHOR.        CSU0127 ADAM DAVIES.                              00030037
000400*INSTALLATION.  CSU.                                              00040004
000500*SECURITY.      UNCLASSIFIED.                                     00050002
000600*DATE-WRITTEN.  AUG 25, 2017.                                     00060017
000700*DATE-COMPILED.                                                   00070002
000710*****************************************************             00071041
000720*THE RECORED IS TO BE SORTED AND PRINTED            *             00072041
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