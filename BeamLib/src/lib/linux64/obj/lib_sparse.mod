G95 module created on Wed Aug 31 18:57:48 2011 from ../../src/lib_sparse.f90
If you edit this, you'll get what you deserve.
module-version 8
(() () () () () () () () () () () () () () () () () () () () ())

()

()

()

()

(2 'lib_sparse' 'lib_sparse' 1 ((MODULE UNKNOWN UNKNOWN UNKNOWN NONE
NONE) (UNKNOWN) 0 0 () () () '' () ())
3 'sparse' 'lib_sparse' 1 ((DERIVED UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
UNKNOWN) 0 0 () () () '' ((4 'i' (INTEGER 8) () () 0 0 0 ()) (5 'j' (
INTEGER 8) () () 0 0 0 ()) (6 'a' (REAL 8) () () 0 0 0 ())) PUBLIC ())
7 'sparse_addmat' 'lib_sparse' 1 ((PROCEDURE UNKNOWN MODULE-PROC DECL
NONE NONE SUBROUTINE) (PROCEDURE 0) 0 0 (8 NONE 9 NONE 10 NONE 11 NONE
12 NONE) () () '' () ())
13 'sparse_addsparse' 'lib_sparse' 1 ((PROCEDURE UNKNOWN MODULE-PROC
DECL NONE NONE SUBROUTINE) (PROCEDURE 0) 0 0 (14 NONE 15 NONE 16 NONE 17
NONE 18 NONE 19 NONE 20 NONE 21 NONE 22 NONE) () () '' () ())
23 'sparse_addval' 'lib_sparse' 1 ((PROCEDURE UNKNOWN MODULE-PROC DECL
NONE NONE SUBROUTINE INVOKED) (PROCEDURE 0) 0 0 (24 NONE 25 NONE 26 NONE
27 NONE 28 NONE 29 NONE) () () '' () ())
30 'sparse_copy2band' 'lib_sparse' 1 ((PROCEDURE UNKNOWN MODULE-PROC
DECL NONE NONE SUBROUTINE) (PROCEDURE 0) 0 0 (31 NONE 32 NONE 33 NONE 34
NONE 35 NONE) () () '' () ())
36 'sparse_getbandwidth' 'lib_sparse' 1 ((PROCEDURE UNKNOWN MODULE-PROC
DECL NONE NONE SUBROUTINE) (PROCEDURE 0) 0 0 (37 NONE 38 NONE 39 NONE 40
NONE) () () '' () ())
41 'sparse_matvmul' 'lib_sparse' 1 ((PROCEDURE UNKNOWN MODULE-PROC DECL
NONE NONE DIMENSION FUNCTION) (REAL 8) 0 0 (42 NONE 43 NONE 44 NONE 45
NONE) (1 EXPLICIT (CONSTANT (INTEGER 8) 0 '1') (VARIABLE (INTEGER 8) 0
44 ())) () '' () ())
46 'sparse_precond' 'lib_sparse' 1 ((PROCEDURE UNKNOWN MODULE-PROC DECL
NONE NONE SUBROUTINE) (PROCEDURE 0) 0 0 (47 NONE 48 NONE 49 NONE 50 NONE)
() () '' () ())
51 'sparse_precond2' 'lib_sparse' 1 ((PROCEDURE UNKNOWN MODULE-PROC DECL
NONE NONE SUBROUTINE) (PROCEDURE 0) 0 0 (52 NONE 53 NONE 54 NONE 55 NONE
56 NONE 57 NONE) () () '' () ())
58 'sparse_zero' 'lib_sparse' 1 ((PROCEDURE UNKNOWN MODULE-PROC DECL
NONE NONE SUBROUTINE) (PROCEDURE 0) 0 0 (59 NONE 60 NONE) () () '' () ())
60 'matrix' '' 61 ((VARIABLE OUT UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
59 'dimarray' '' 61 ((VARIABLE OUT UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
57 'mindelta' '' 62 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (
REAL 8) 0 0 () () () '' () ())
56 'qglobal' '' 62 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (REAL 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
55 'mglobal' '' 62 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
54 'ms' '' 62 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
53 'kglobal' '' 62 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
52 'ks' '' 62 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
50 'mindelta' '' 63 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (
REAL 8) 0 0 () () () '' () ())
49 'qglobal' '' 63 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (REAL 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
48 'kglobal' '' 63 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
47 'ks' '' 63 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
45 'vector' '' 64 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (REAL 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
44 'dimvector' '' 64 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
43 'sprmat' '' 64 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
42 'dimarray' '' 64 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
40 'ku' '' 65 ((VARIABLE OUT UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
39 'kl' '' 65 ((VARIABLE OUT UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
38 'matrix' '' 65 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
37 'dimarray' '' 65 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
35 'bandedmat' '' 66 ((VARIABLE OUT UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (REAL 8) 0 0 () (2 ASSUMED_SHAPE () () () ()) () '' () ())
34 'ku' '' 66 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
33 'kl' '' 66 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
32 'matrix' '' 66 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
31 'dimarray' '' 66 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
29 'factor' '' 67 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE OPTIONAL DUMMY)
(REAL 8) 0 0 () () () '' () ())
28 'matrix' '' 67 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
27 'dimarray' '' 67 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
26 'val' '' 67 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (REAL 8) 0
0 () () () '' () ())
25 'j' '' 67 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
24 'i' '' 67 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
22 'filterj' '' 68 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION
OPTIONAL DUMMY) (INTEGER 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
21 'filteri' '' 68 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION
OPTIONAL DUMMY) (INTEGER 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
20 'factor' '' 68 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE OPTIONAL DUMMY)
(REAL 8) 0 0 () () () '' () ())
19 'mat' '' 68 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
18 'dimmat' '' 68 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
17 'submat' '' 68 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
16 'dimsubmat' '' 68 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
15 'j1' '' 68 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
14 'i1' '' 68 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
12 'sprmat' '' 69 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DIMENSION
DUMMY) (DERIVED 3) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
11 'dimarray' '' 69 ((VARIABLE INOUT UNKNOWN UNKNOWN NONE NONE DUMMY) (
INTEGER 8) 0 0 () () () '' () ())
10 'mat' '' 69 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION DUMMY)
(REAL 8) 0 0 () (2 ASSUMED_SHAPE () () () ()) () '' () ())
9 'j1' '' 69 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
8 'i1' '' 69 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
)

('lib_sparse' 0 2 'sparse' 0 3 'sparse_addmat' 0 7 'sparse_addsparse' 0
13 'sparse_addval' 0 23 'sparse_copy2band' 0 30 'sparse_getbandwidth' 0
36 'sparse_matvmul' 0 41 'sparse_precond' 0 46 'sparse_precond2' 0 51
'sparse_zero' 0 58)