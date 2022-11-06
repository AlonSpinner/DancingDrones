(define (problem maildelivery-problem)
 (:domain maildelivery-domain)
 (:objects
   r0 r1 r2 - robot
   l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17 l18 l19 l20 l21 l22 l23 - location
   p0 p1 p2 p3 p4 p5 - package
 )
 (:init (is_connected l0 l4) (is_connected l4 l0) (is_connected l1 l5) (is_connected l5 l1) (is_connected l2 l6) (is_connected l6 l2) (is_connected l3 l7) (is_connected l7 l3) (is_connected l0 l1) (is_connected l1 l0) (is_connected l1 l2) (is_connected l2 l1) (is_connected l2 l3) (is_connected l3 l2) (is_connected l3 l0) (is_connected l0 l3) (is_connected l1 l8) (is_connected l8 l1) (is_connected l2 l9) (is_connected l9 l2) (is_connected l1 l10) (is_connected l10 l1) (is_connected l2 l13) (is_connected l13 l2) (is_connected l8 l11) (is_connected l11 l8) (is_connected l9 l12) (is_connected l12 l9) (is_connected l8 l9) (is_connected l9 l8) (is_connected l8 l14) (is_connected l14 l8) (is_connected l9 l15) (is_connected l15 l9) (is_connected l8 l16) (is_connected l16 l8) (is_connected l9 l19) (is_connected l19 l9) (is_connected l14 l17) (is_connected l17 l14) (is_connected l15 l18) (is_connected l18 l15) (is_connected l14 l15) (is_connected l15 l14) (is_connected l2 l20) (is_connected l20 l2) (is_connected l9 l21) (is_connected l21 l9) (is_connected l15 l22) (is_connected l22 l15) (= (distance l0 l0) 0) (= (distance l0 l1) 3) (= (distance l0 l2) 4.242640687) (= (distance l0 l3) 3) (= (distance l0 l4) 1.414213562) (= (distance l0 l5) 2.236067977) (= (distance l0 l6) 2.828427125) (= (distance l0 l7) 2.236067977) (= (distance l0 l8) 6) (= (distance l0 l9) 6.708203932) (= (distance l0 l10) 4.123105626) (= (distance l0 l11) 5.099019514) (= (distance l0 l12) 5.385164807) (= (distance l0 l13) 4.472135955) (= (distance l0 l14) 9) (= (distance l0 l15) 9.486832981) (= (distance l0 l16) 7.071067812) (= (distance l0 l17) 8.062257748) (= (distance l0 l18) 8.246211251) (= (distance l0 l19) 7.280109889) (= (distance l0 l20) 5) (= (distance l0 l21) 7.211102551) (= (distance l0 l22) 9.848857802) (= (distance l0 l23) 6.363961031) (= (distance l1 l0) 3) (= (distance l1 l1) 0) (= (distance l1 l2) 3) (= (distance l1 l3) 4.242640687) (= (distance l1 l4) 2.236067977) (= (distance l1 l5) 1.414213562) (= (distance l1 l6) 2.236067977) (= (distance l1 l7) 2.828427125) (= (distance l1 l8) 3) (= (distance l1 l9) 4.242640687) (= (distance l1 l10) 1.414213562) (= (distance l1 l11) 2.236067977) (= (distance l1 l12) 2.828427125) (= (distance l1 l13) 2.236067977) (= (distance l1 l14) 6) (= (distance l1 l15) 6.708203932) (= (distance l1 l16) 4.123105626) (= (distance l1 l17) 5.099019514) (= (distance l1 l18) 5.385164807) (= (distance l1 l19) 4.472135955) (= (distance l1 l20) 4) (= (distance l1 l21) 5) (= (distance l1 l22) 7.211102551) (= (distance l1 l23) 4.743416490) (= (distance l2 l0) 4.242640687) (= (distance l2 l1) 3) (= (distance l2 l2) 0) (= (distance l2 l3) 3) (= (distance l2 l4) 2.828427125) (= (distance l2 l5) 2.236067977) (= (distance l2 l6) 1.414213562) (= (distance l2 l7) 2.236067977) (= (distance l2 l8) 4.242640687) (= (distance l2 l9) 3) (= (distance l2 l10) 2.236067977) (= (distance l2 l11) 2.828427125) (= (distance l2 l12) 2.236067977) (= (distance l2 l13) 1.414213562) (= (distance l2 l14) 6.708203932) (= (distance l2 l15) 6) (= (distance l2 l16) 4.472135955) (= (distance l2 l17) 5.385164807) (= (distance l2 l18) 5.099019514) (= (distance l2 l19) 4.123105626) (= (distance l2 l20) 1) (= (distance l2 l21) 3.162277660) (= (distance l2 l22) 6.082762530) (= (distance l2 l23) 2.121320344) (= (distance l3 l0) 3) (= (distance l3 l1) 4.242640687) (= (distance l3 l2) 3) (= (distance l3 l3) 0) (= (distance l3 l4) 2.236067977) (= (distance l3 l5) 2.828427125) (= (distance l3 l6) 2.236067977) (= (distance l3 l7) 1.414213562) (= (distance l3 l8) 6.708203932) (= (distance l3 l9) 6) (= (distance l3 l10) 4.472135955) (= (distance l3 l11) 5.385164807) (= (distance l3 l12) 5.099019514) (= (distance l3 l13) 4.123105626) (= (distance l3 l14) 9.486832981) (= (distance l3 l15) 9) (= (distance l3 l16) 7.280109889) (= (distance l3 l17) 8.246211251) (= (distance l3 l18) 8.062257748) (= (distance l3 l19) 7.071067812) (= (distance l3 l20) 3.162277660) (= (distance l3 l21) 6.082762530) (= (distance l3 l22) 9.055385138) (= (distance l3 l23) 4.743416490) (= (distance l4 l0) 1.414213562) (= (distance l4 l1) 2.236067977) (= (distance l4 l2) 2.828427125) (= (distance l4 l3) 2.236067977) (= (distance l4 l4) 0) (= (distance l4 l5) 1) (= (distance l4 l6) 1.414213562) (= (distance l4 l7) 1) (= (distance l4 l8) 5.099019514) (= (distance l4 l9) 5.385164807) (= (distance l4 l10) 3) (= (distance l4 l11) 4) (= (distance l4 l12) 4.123105626) (= (distance l4 l13) 3.162277660) (= (distance l4 l14) 8.062257748) (= (distance l4 l15) 8.246211251) (= (distance l4 l16) 6) (= (distance l4 l17) 7) (= (distance l4 l18) 7.071067812) (= (distance l4 l19) 6.082762530) (= (distance l4 l20) 3.605551275) (= (distance l4 l21) 5.830951895) (= (distance l4 l22) 8.544003745) (= (distance l4 l23) 4.949747468) (= (distance l5 l0) 2.236067977) (= (distance l5 l1) 1.414213562) (= (distance l5 l2) 2.236067977) (= (distance l5 l3) 2.828427125) (= (distance l5 l4) 1) (= (distance l5 l5) 0) (= (distance l5 l6) 1) (= (distance l5 l7) 1.414213562) (= (distance l5 l8) 4.123105626) (= (distance l5 l9) 4.472135955) (= (distance l5 l10) 2) (= (distance l5 l11) 3) (= (distance l5 l12) 3.162277660) (= (distance l5 l13) 2.236067977) (= (distance l5 l14) 7.071067812) (= (distance l5 l15) 7.280109889) (= (distance l5 l16) 5) (= (distance l5 l17) 6) (= (distance l5 l18) 6.082762530) (= (distance l5 l19) 5.099019514) (= (distance l5 l20) 3.162277660) (= (distance l5 l21) 5) (= (distance l5 l22) 7.615773106) (= (distance l5 l23) 4.301162634) (= (distance l6 l0) 2.828427125) (= (distance l6 l1) 2.236067977) (= (distance l6 l2) 1.414213562) (= (distance l6 l3) 2.236067977) (= (distance l6 l4) 1.414213562) (= (distance l6 l5) 1) (= (distance l6 l6) 0) (= (distance l6 l7) 1) (= (distance l6 l8) 4.472135955) (= (distance l6 l9) 4.123105626) (= (distance l6 l10) 2.236067977) (= (distance l6 l11) 3.162277660) (= (distance l6 l12) 3) (= (distance l6 l13) 2) (= (distance l6 l14) 7.280109889) (= (distance l6 l15) 7.071067812) (= (distance l6 l16) 5.099019514) (= (distance l6 l17) 6.082762530) (= (distance l6 l18) 6) (= (distance l6 l19) 5) (= (distance l6 l20) 2.236067977) (= (distance l6 l21) 4.472135955) (= (distance l6 l22) 7.280109889) (= (distance l6 l23) 3.535533906) (= (distance l7 l0) 2.236067977) (= (distance l7 l1) 2.828427125) (= (distance l7 l2) 2.236067977) (= (distance l7 l3) 1.414213562) (= (distance l7 l4) 1) (= (distance l7 l5) 1.414213562) (= (distance l7 l6) 1) (= (distance l7 l7) 0) (= (distance l7 l8) 5.385164807) (= (distance l7 l9) 5.099019514) (= (distance l7 l10) 3.162277660) (= (distance l7 l11) 4.123105626) (= (distance l7 l12) 4) (= (distance l7 l13) 3) (= (distance l7 l14) 8.246211251) (= (distance l7 l15) 8.062257748) (= (distance l7 l16) 6.082762530) (= (distance l7 l17) 7.071067812) (= (distance l7 l18) 7) (= (distance l7 l19) 6) (= (distance l7 l20) 2.828427125) (= (distance l7 l21) 5.385164807) (= (distance l7 l22) 8.246211251) (= (distance l7 l23) 4.301162634) (= (distance l8 l0) 6) (= (distance l8 l1) 3) (= (distance l8 l2) 4.242640687) (= (distance l8 l3) 6.708203932) (= (distance l8 l4) 5.099019514) (= (distance l8 l5) 4.123105626) (= (distance l8 l6) 4.472135955) (= (distance l8 l7) 5.385164807) (= (distance l8 l8) 0) (= (distance l8 l9) 3) (= (distance l8 l10) 2.236067977) (= (distance l8 l11) 1.414213562) (= (distance l8 l12) 2.236067977) (= (distance l8 l13) 2.828427125) (= (distance l8 l14) 3) (= (distance l8 l15) 4.242640687) (= (distance l8 l16) 1.414213562) (= (distance l8 l17) 2.236067977) (= (distance l8 l18) 2.828427125) (= (distance l8 l19) 2.236067977) (= (distance l8 l20) 5) (= (distance l8 l21) 4) (= (distance l8 l22) 5) (= (distance l8 l23) 4.743416490) (= (distance l9 l0) 6.708203932) (= (distance l9 l1) 4.242640687) (= (distance l9 l2) 3) (= (distance l9 l3) 6) (= (distance l9 l4) 5.385164807) (= (distance l9 l5) 4.472135955) (= (distance l9 l6) 4.123105626) (= (distance l9 l7) 5.099019514) (= (distance l9 l8) 3) (= (distance l9 l9) 0) (= (distance l9 l10) 2.828427125) (= (distance l9 l11) 2.236067977) (= (distance l9 l12) 1.414213562) (= (distance l9 l13) 2.236067977) (= (distance l9 l14) 4.242640687) (= (distance l9 l15) 3) (= (distance l9 l16) 2.236067977) (= (distance l9 l17) 2.828427125) (= (distance l9 l18) 2.236067977) (= (distance l9 l19) 1.414213562) (= (distance l9 l20) 3.162277660) (= (distance l9 l21) 1) (= (distance l9 l22) 3.162277660) (= (distance l9 l23) 2.121320344) (= (distance l10 l0) 4.123105626) (= (distance l10 l1) 1.414213562) (= (distance l10 l2) 2.236067977) (= (distance l10 l3) 4.472135955) (= (distance l10 l4) 3) (= (distance l10 l5) 2) (= (distance l10 l6) 2.236067977) (= (distance l10 l7) 3.162277660) (= (distance l10 l8) 2.236067977) (= (distance l10 l9) 2.828427125) (= (distance l10 l10) 0) (= (distance l10 l11) 1) (= (distance l10 l12) 1.414213562) (= (distance l10 l13) 1) (= (distance l10 l14) 5.099019514) (= (distance l10 l15) 5.385164807) (= (distance l10 l16) 3) (= (distance l10 l17) 4) (= (distance l10 l18) 4.123105626) (= (distance l10 l19) 3.162277660) (= (distance l10 l20) 3.162277660) (= (distance l10 l21) 3.605551275) (= (distance l10 l22) 5.830951895) (= (distance l10 l23) 3.535533906) (= (distance l11 l0) 5.099019514) (= (distance l11 l1) 2.236067977) (= (distance l11 l2) 2.828427125) (= (distance l11 l3) 5.385164807) (= (distance l11 l4) 4) (= (distance l11 l5) 3) (= (distance l11 l6) 3.162277660) (= (distance l11 l7) 4.123105626) (= (distance l11 l8) 1.414213562) (= (distance l11 l9) 2.236067977) (= (distance l11 l10) 1) (= (distance l11 l11) 0) (= (distance l11 l12) 1) (= (distance l11 l13) 1.414213562) (= (distance l11 l14) 4.123105626) (= (distance l11 l15) 4.472135955) (= (distance l11 l16) 2) (= (distance l11 l17) 3) (= (distance l11 l18) 3.162277660) (= (distance l11 l19) 2.236067977) (= (distance l11 l20) 3.605551275) (= (distance l11 l21) 3.162277660) (= (distance l11 l22) 5) (= (distance l11 l23) 3.535533906) (= (distance l12 l0) 5.385164807) (= (distance l12 l1) 2.828427125) (= (distance l12 l2) 2.236067977) (= (distance l12 l3) 5.099019514) (= (distance l12 l4) 4.123105626) (= (distance l12 l5) 3.162277660) (= (distance l12 l6) 3) (= (distance l12 l7) 4) (= (distance l12 l8) 2.236067977) (= (distance l12 l9) 1.414213562) (= (distance l12 l10) 1.414213562) (= (distance l12 l11) 1) (= (distance l12 l12) 0) (= (distance l12 l13) 1) (= (distance l12 l14) 4.472135955) (= (distance l12 l15) 4.123105626) (= (distance l12 l16) 2.236067977) (= (distance l12 l17) 3.162277660) (= (distance l12 l18) 3) (= (distance l12 l19) 2) (= (distance l12 l20) 2.828427125) (= (distance l12 l21) 2.236067977) (= (distance l12 l22) 4.472135955) (= (distance l12 l23) 2.549509757) (= (distance l13 l0) 4.472135955) (= (distance l13 l1) 2.236067977) (= (distance l13 l2) 1.414213562) (= (distance l13 l3) 4.123105626) (= (distance l13 l4) 3.162277660) (= (distance l13 l5) 2.236067977) (= (distance l13 l6) 2) (= (distance l13 l7) 3) (= (distance l13 l8) 2.828427125) (= (distance l13 l9) 2.236067977) (= (distance l13 l10) 1) (= (distance l13 l11) 1.414213562) (= (distance l13 l12) 1) (= (distance l13 l13) 0) (= (distance l13 l14) 5.385164807) (= (distance l13 l15) 5.099019514) (= (distance l13 l16) 3.162277660) (= (distance l13 l17) 4.123105626) (= (distance l13 l18) 4) (= (distance l13 l19) 3) (= (distance l13 l20) 2.236067977) (= (distance l13 l21) 2.828427125) (= (distance l13 l22) 5.385164807) (= (distance l13 l23) 2.549509757) (= (distance l14 l0) 9) (= (distance l14 l1) 6) (= (distance l14 l2) 6.708203932) (= (distance l14 l3) 9.486832981) (= (distance l14 l4) 8.062257748) (= (distance l14 l5) 7.071067812) (= (distance l14 l6) 7.280109889) (= (distance l14 l7) 8.246211251) (= (distance l14 l8) 3) (= (distance l14 l9) 4.242640687) (= (distance l14 l10) 5.099019514) (= (distance l14 l11) 4.123105626) (= (distance l14 l12) 4.472135955) (= (distance l14 l13) 5.385164807) (= (distance l14 l14) 0) (= (distance l14 l15) 3) (= (distance l14 l16) 2.236067977) (= (distance l14 l17) 1.414213562) (= (distance l14 l18) 2.236067977) (= (distance l14 l19) 2.828427125) (= (distance l14 l20) 7.211102551) (= (distance l14 l21) 5) (= (distance l14 l22) 4) (= (distance l14 l23) 6.363961031) (= (distance l15 l0) 9.486832981) (= (distance l15 l1) 6.708203932) (= (distance l15 l2) 6) (= (distance l15 l3) 9) (= (distance l15 l4) 8.246211251) (= (distance l15 l5) 7.280109889) (= (distance l15 l6) 7.071067812) (= (distance l15 l7) 8.062257748) (= (distance l15 l8) 4.242640687) (= (distance l15 l9) 3) (= (distance l15 l10) 5.385164807) (= (distance l15 l11) 4.472135955) (= (distance l15 l12) 4.123105626) (= (distance l15 l13) 5.099019514) (= (distance l15 l14) 3) (= (distance l15 l15) 0) (= (distance l15 l16) 2.828427125) (= (distance l15 l17) 2.236067977) (= (distance l15 l18) 1.414213562) (= (distance l15 l19) 2.236067977) (= (distance l15 l20) 6.082762530) (= (distance l15 l21) 3.162277660) (= (distance l15 l22) 1) (= (distance l15 l23) 4.743416490) (= (distance l16 l0) 7.071067812) (= (distance l16 l1) 4.123105626) (= (distance l16 l2) 4.472135955) (= (distance l16 l3) 7.280109889) (= (distance l16 l4) 6) (= (distance l16 l5) 5) (= (distance l16 l6) 5.099019514) (= (distance l16 l7) 6.082762530) (= (distance l16 l8) 1.414213562) (= (distance l16 l9) 2.236067977) (= (distance l16 l10) 3) (= (distance l16 l11) 2) (= (distance l16 l12) 2.236067977) (= (distance l16 l13) 3.162277660) (= (distance l16 l14) 2.236067977) (= (distance l16 l15) 2.828427125) (= (distance l16 l16) 0) (= (distance l16 l17) 1) (= (distance l16 l18) 1.414213562) (= (distance l16 l19) 1) (= (distance l16 l20) 5) (= (distance l16 l21) 3.162277660) (= (distance l16 l22) 3.605551275) (= (distance l16 l23) 4.301162634) (= (distance l17 l0) 8.062257748) (= (distance l17 l1) 5.099019514) (= (distance l17 l2) 5.385164807) (= (distance l17 l3) 8.246211251) (= (distance l17 l4) 7) (= (distance l17 l5) 6) (= (distance l17 l6) 6.082762530) (= (distance l17 l7) 7.071067812) (= (distance l17 l8) 2.236067977) (= (distance l17 l9) 2.828427125) (= (distance l17 l10) 4) (= (distance l17 l11) 3) (= (distance l17 l12) 3.162277660) (= (distance l17 l13) 4.123105626) (= (distance l17 l14) 1.414213562) (= (distance l17 l15) 2.236067977) (= (distance l17 l16) 1) (= (distance l17 l17) 0) (= (distance l17 l18) 1) (= (distance l17 l19) 1.414213562) (= (distance l17 l20) 5.830951895) (= (distance l17 l21) 3.605551275) (= (distance l17 l22) 3.162277660) (= (distance l17 l23) 4.949747468) (= (distance l18 l0) 8.246211251) (= (distance l18 l1) 5.385164807) (= (distance l18 l2) 5.099019514) (= (distance l18 l3) 8.062257748) (= (distance l18 l4) 7.071067812) (= (distance l18 l5) 6.082762530) (= (distance l18 l6) 6) (= (distance l18 l7) 7) (= (distance l18 l8) 2.828427125) (= (distance l18 l9) 2.236067977) (= (distance l18 l10) 4.123105626) (= (distance l18 l11) 3.162277660) (= (distance l18 l12) 3) (= (distance l18 l13) 4) (= (distance l18 l14) 2.236067977) (= (distance l18 l15) 1.414213562) (= (distance l18 l16) 1.414213562) (= (distance l18 l17) 1) (= (distance l18 l18) 0) (= (distance l18 l19) 1) (= (distance l18 l20) 5.385164807) (= (distance l18 l21) 2.828427125) (= (distance l18 l22) 2.236067977) (= (distance l18 l23) 4.301162634) (= (distance l19 l0) 7.280109889) (= (distance l19 l1) 4.472135955) (= (distance l19 l2) 4.123105626) (= (distance l19 l3) 7.071067812) (= (distance l19 l4) 6.082762530) (= (distance l19 l5) 5.099019514) (= (distance l19 l6) 5) (= (distance l19 l7) 6) (= (distance l19 l8) 2.236067977) (= (distance l19 l9) 1.414213562) (= (distance l19 l10) 3.162277660) (= (distance l19 l11) 2.236067977) (= (distance l19 l12) 2) (= (distance l19 l13) 3) (= (distance l19 l14) 2.828427125) (= (distance l19 l15) 2.236067977) (= (distance l19 l16) 1) (= (distance l19 l17) 1.414213562) (= (distance l19 l18) 1) (= (distance l19 l19) 0) (= (distance l19 l20) 4.472135955) (= (distance l19 l21) 2.236067977) (= (distance l19 l22) 2.828427125) (= (distance l19 l23) 3.535533906) (= (distance l20 l0) 5) (= (distance l20 l1) 4) (= (distance l20 l2) 1) (= (distance l20 l3) 3.162277660) (= (distance l20 l4) 3.605551275) (= (distance l20 l5) 3.162277660) (= (distance l20 l6) 2.236067977) (= (distance l20 l7) 2.828427125) (= (distance l20 l8) 5) (= (distance l20 l9) 3.162277660) (= (distance l20 l10) 3.162277660) (= (distance l20 l11) 3.605551275) (= (distance l20 l12) 2.828427125) (= (distance l20 l13) 2.236067977) (= (distance l20 l14) 7.211102551) (= (distance l20 l15) 6.082762530) (= (distance l20 l16) 5) (= (distance l20 l17) 5.830951895) (= (distance l20 l18) 5.385164807) (= (distance l20 l19) 4.472135955) (= (distance l20 l20) 0) (= (distance l20 l21) 3) (= (distance l20 l22) 6) (= (distance l20 l23) 1.581138830) (= (distance l21 l0) 7.211102551) (= (distance l21 l1) 5) (= (distance l21 l2) 3.162277660) (= (distance l21 l3) 6.082762530) (= (distance l21 l4) 5.830951895) (= (distance l21 l5) 5) (= (distance l21 l6) 4.472135955) (= (distance l21 l7) 5.385164807) (= (distance l21 l8) 4) (= (distance l21 l9) 1) (= (distance l21 l10) 3.605551275) (= (distance l21 l11) 3.162277660) (= (distance l21 l12) 2.236067977) (= (distance l21 l13) 2.828427125) (= (distance l21 l14) 5) (= (distance l21 l15) 3.162277660) (= (distance l21 l16) 3.162277660) (= (distance l21 l17) 3.605551275) (= (distance l21 l18) 2.828427125) (= (distance l21 l19) 2.236067977) (= (distance l21 l20) 3) (= (distance l21 l21) 0) (= (distance l21 l22) 3) (= (distance l21 l23) 1.581138830) (= (distance l22 l0) 9.848857802) (= (distance l22 l1) 7.211102551) (= (distance l22 l2) 6.082762530) (= (distance l22 l3) 9.055385138) (= (distance l22 l4) 8.544003745) (= (distance l22 l5) 7.615773106) (= (distance l22 l6) 7.280109889) (= (distance l22 l7) 8.246211251) (= (distance l22 l8) 5) (= (distance l22 l9) 3.162277660) (= (distance l22 l10) 5.830951895) (= (distance l22 l11) 5) (= (distance l22 l12) 4.472135955) (= (distance l22 l13) 5.385164807) (= (distance l22 l14) 4) (= (distance l22 l15) 1) (= (distance l22 l16) 3.605551275) (= (distance l22 l17) 3.162277660) (= (distance l22 l18) 2.236067977) (= (distance l22 l19) 2.828427125) (= (distance l22 l20) 6) (= (distance l22 l21) 3) (= (distance l22 l22) 0) (= (distance l22 l23) 4.527692569) (= (distance l23 l0) 6.363961031) (= (distance l23 l1) 4.743416490) (= (distance l23 l2) 2.121320344) (= (distance l23 l3) 4.743416490) (= (distance l23 l4) 4.949747468) (= (distance l23 l5) 4.301162634) (= (distance l23 l6) 3.535533906) (= (distance l23 l7) 4.301162634) (= (distance l23 l8) 4.743416490) (= (distance l23 l9) 2.121320344) (= (distance l23 l10) 3.535533906) (= (distance l23 l11) 3.535533906) (= (distance l23 l12) 2.549509757) (= (distance l23 l13) 2.549509757) (= (distance l23 l14) 6.363961031) (= (distance l23 l15) 4.743416490) (= (distance l23 l16) 4.301162634) (= (distance l23 l17) 4.949747468) (= (distance l23 l18) 4.301162634) (= (distance l23 l19) 3.535533906) (= (distance l23 l20) 1.581138830) (= (distance l23 l21) 1.581138830) (= (distance l23 l22) 4.527692569) (= (distance l23 l23) 0) (robot_at r0 l20) (= (robot_velocity r0) 8) (= (charge r0) 100) (robot_at r1 l21) (= (robot_velocity r1) 8) (= (charge r1) 100) (robot_at r2 l22) (= (robot_velocity r2) 8) (= (charge r2) 100) (location_has_package p0 l4) (location_has_package p1 l6) (location_has_package p2 l11) (location_has_package p3 l19) (location_has_package p4 l16) (location_has_package p5 l13) (location_is_dock l23) (location_is_free l0) (location_is_free l1) (location_is_free l2) (location_is_free l3) (location_is_free l4) (location_is_free l5) (location_is_free l6) (location_is_free l7) (location_is_free l8) (location_is_free l9) (location_is_free l10) (location_is_free l11) (location_is_free l12) (location_is_free l13) (location_is_free l14) (location_is_free l15) (location_is_free l16) (location_is_free l17) (location_is_free l18) (location_is_free l19) (location_is_free l23) (robot_not_holding_package r0) (robot_not_holding_package r1) (robot_not_holding_package r2) (road_is_free l0 l0) (road_is_free l1 l0) (road_is_free l2 l0) (road_is_free l3 l0) (road_is_free l4 l0) (road_is_free l5 l0) (road_is_free l6 l0) (road_is_free l7 l0) (road_is_free l8 l0) (road_is_free l9 l0) (road_is_free l10 l0) (road_is_free l11 l0) (road_is_free l12 l0) (road_is_free l13 l0) (road_is_free l14 l0) (road_is_free l15 l0) (road_is_free l16 l0) (road_is_free l17 l0) (road_is_free l18 l0) (road_is_free l19 l0) (road_is_free l20 l0) (road_is_free l21 l0) (road_is_free l22 l0) (road_is_free l23 l0) (road_is_free l0 l1) (road_is_free l1 l1) (road_is_free l2 l1) (road_is_free l3 l1) (road_is_free l4 l1) (road_is_free l5 l1) (road_is_free l6 l1) (road_is_free l7 l1) (road_is_free l8 l1) (road_is_free l9 l1) (road_is_free l10 l1) (road_is_free l11 l1) (road_is_free l12 l1) (road_is_free l13 l1) (road_is_free l14 l1) (road_is_free l15 l1) (road_is_free l16 l1) (road_is_free l17 l1) (road_is_free l18 l1) (road_is_free l19 l1) (road_is_free l20 l1) (road_is_free l21 l1) (road_is_free l22 l1) (road_is_free l23 l1) (road_is_free l0 l2) (road_is_free l1 l2) (road_is_free l2 l2) (road_is_free l3 l2) (road_is_free l4 l2) (road_is_free l5 l2) (road_is_free l6 l2) (road_is_free l7 l2) (road_is_free l8 l2) (road_is_free l9 l2) (road_is_free l10 l2) (road_is_free l11 l2) (road_is_free l12 l2) (road_is_free l13 l2) (road_is_free l14 l2) (road_is_free l15 l2) (road_is_free l16 l2) (road_is_free l17 l2) (road_is_free l18 l2) (road_is_free l19 l2) (road_is_free l20 l2) (road_is_free l21 l2) (road_is_free l22 l2) (road_is_free l23 l2) (road_is_free l0 l3) (road_is_free l1 l3) (road_is_free l2 l3) (road_is_free l3 l3) (road_is_free l4 l3) (road_is_free l5 l3) (road_is_free l6 l3) (road_is_free l7 l3) (road_is_free l8 l3) (road_is_free l9 l3) (road_is_free l10 l3) (road_is_free l11 l3) (road_is_free l12 l3) (road_is_free l13 l3) (road_is_free l14 l3) (road_is_free l15 l3) (road_is_free l16 l3) (road_is_free l17 l3) (road_is_free l18 l3) (road_is_free l19 l3) (road_is_free l20 l3) (road_is_free l21 l3) (road_is_free l22 l3) (road_is_free l23 l3) (road_is_free l0 l4) (road_is_free l1 l4) (road_is_free l2 l4) (road_is_free l3 l4) (road_is_free l4 l4) (road_is_free l5 l4) (road_is_free l6 l4) (road_is_free l7 l4) (road_is_free l8 l4) (road_is_free l9 l4) (road_is_free l10 l4) (road_is_free l11 l4) (road_is_free l12 l4) (road_is_free l13 l4) (road_is_free l14 l4) (road_is_free l15 l4) (road_is_free l16 l4) (road_is_free l17 l4) (road_is_free l18 l4) (road_is_free l19 l4) (road_is_free l20 l4) (road_is_free l21 l4) (road_is_free l22 l4) (road_is_free l23 l4) (road_is_free l0 l5) (road_is_free l1 l5) (road_is_free l2 l5) (road_is_free l3 l5) (road_is_free l4 l5) (road_is_free l5 l5) (road_is_free l6 l5) (road_is_free l7 l5) (road_is_free l8 l5) (road_is_free l9 l5) (road_is_free l10 l5) (road_is_free l11 l5) (road_is_free l12 l5) (road_is_free l13 l5) (road_is_free l14 l5) (road_is_free l15 l5) (road_is_free l16 l5) (road_is_free l17 l5) (road_is_free l18 l5) (road_is_free l19 l5) (road_is_free l20 l5) (road_is_free l21 l5) (road_is_free l22 l5) (road_is_free l23 l5) (road_is_free l0 l6) (road_is_free l1 l6) (road_is_free l2 l6) (road_is_free l3 l6) (road_is_free l4 l6) (road_is_free l5 l6) (road_is_free l6 l6) (road_is_free l7 l6) (road_is_free l8 l6) (road_is_free l9 l6) (road_is_free l10 l6) (road_is_free l11 l6) (road_is_free l12 l6) (road_is_free l13 l6) (road_is_free l14 l6) (road_is_free l15 l6) (road_is_free l16 l6) (road_is_free l17 l6) (road_is_free l18 l6) (road_is_free l19 l6) (road_is_free l20 l6) (road_is_free l21 l6) (road_is_free l22 l6) (road_is_free l23 l6) (road_is_free l0 l7) (road_is_free l1 l7) (road_is_free l2 l7) (road_is_free l3 l7) (road_is_free l4 l7) (road_is_free l5 l7) (road_is_free l6 l7) (road_is_free l7 l7) (road_is_free l8 l7) (road_is_free l9 l7) (road_is_free l10 l7) (road_is_free l11 l7) (road_is_free l12 l7) (road_is_free l13 l7) (road_is_free l14 l7) (road_is_free l15 l7) (road_is_free l16 l7) (road_is_free l17 l7) (road_is_free l18 l7) (road_is_free l19 l7) (road_is_free l20 l7) (road_is_free l21 l7) (road_is_free l22 l7) (road_is_free l23 l7) (road_is_free l0 l8) (road_is_free l1 l8) (road_is_free l2 l8) (road_is_free l3 l8) (road_is_free l4 l8) (road_is_free l5 l8) (road_is_free l6 l8) (road_is_free l7 l8) (road_is_free l8 l8) (road_is_free l9 l8) (road_is_free l10 l8) (road_is_free l11 l8) (road_is_free l12 l8) (road_is_free l13 l8) (road_is_free l14 l8) (road_is_free l15 l8) (road_is_free l16 l8) (road_is_free l17 l8) (road_is_free l18 l8) (road_is_free l19 l8) (road_is_free l20 l8) (road_is_free l21 l8) (road_is_free l22 l8) (road_is_free l23 l8) (road_is_free l0 l9) (road_is_free l1 l9) (road_is_free l2 l9) (road_is_free l3 l9) (road_is_free l4 l9) (road_is_free l5 l9) (road_is_free l6 l9) (road_is_free l7 l9) (road_is_free l8 l9) (road_is_free l9 l9) (road_is_free l10 l9) (road_is_free l11 l9) (road_is_free l12 l9) (road_is_free l13 l9) (road_is_free l14 l9) (road_is_free l15 l9) (road_is_free l16 l9) (road_is_free l17 l9) (road_is_free l18 l9) (road_is_free l19 l9) (road_is_free l20 l9) (road_is_free l21 l9) (road_is_free l22 l9) (road_is_free l23 l9) (road_is_free l0 l10) (road_is_free l1 l10) (road_is_free l2 l10) (road_is_free l3 l10) (road_is_free l4 l10) (road_is_free l5 l10) (road_is_free l6 l10) (road_is_free l7 l10) (road_is_free l8 l10) (road_is_free l9 l10) (road_is_free l10 l10) (road_is_free l11 l10) (road_is_free l12 l10) (road_is_free l13 l10) (road_is_free l14 l10) (road_is_free l15 l10) (road_is_free l16 l10) (road_is_free l17 l10) (road_is_free l18 l10) (road_is_free l19 l10) (road_is_free l20 l10) (road_is_free l21 l10) (road_is_free l22 l10) (road_is_free l23 l10) (road_is_free l0 l11) (road_is_free l1 l11) (road_is_free l2 l11) (road_is_free l3 l11) (road_is_free l4 l11) (road_is_free l5 l11) (road_is_free l6 l11) (road_is_free l7 l11) (road_is_free l8 l11) (road_is_free l9 l11) (road_is_free l10 l11) (road_is_free l11 l11) (road_is_free l12 l11) (road_is_free l13 l11) (road_is_free l14 l11) (road_is_free l15 l11) (road_is_free l16 l11) (road_is_free l17 l11) (road_is_free l18 l11) (road_is_free l19 l11) (road_is_free l20 l11) (road_is_free l21 l11) (road_is_free l22 l11) (road_is_free l23 l11) (road_is_free l0 l12) (road_is_free l1 l12) (road_is_free l2 l12) (road_is_free l3 l12) (road_is_free l4 l12) (road_is_free l5 l12) (road_is_free l6 l12) (road_is_free l7 l12) (road_is_free l8 l12) (road_is_free l9 l12) (road_is_free l10 l12) (road_is_free l11 l12) (road_is_free l12 l12) (road_is_free l13 l12) (road_is_free l14 l12) (road_is_free l15 l12) (road_is_free l16 l12) (road_is_free l17 l12) (road_is_free l18 l12) (road_is_free l19 l12) (road_is_free l20 l12) (road_is_free l21 l12) (road_is_free l22 l12) (road_is_free l23 l12) (road_is_free l0 l13) (road_is_free l1 l13) (road_is_free l2 l13) (road_is_free l3 l13) (road_is_free l4 l13) (road_is_free l5 l13) (road_is_free l6 l13) (road_is_free l7 l13) (road_is_free l8 l13) (road_is_free l9 l13) (road_is_free l10 l13) (road_is_free l11 l13) (road_is_free l12 l13) (road_is_free l13 l13) (road_is_free l14 l13) (road_is_free l15 l13) (road_is_free l16 l13) (road_is_free l17 l13) (road_is_free l18 l13) (road_is_free l19 l13) (road_is_free l20 l13) (road_is_free l21 l13) (road_is_free l22 l13) (road_is_free l23 l13) (road_is_free l0 l14) (road_is_free l1 l14) (road_is_free l2 l14) (road_is_free l3 l14) (road_is_free l4 l14) (road_is_free l5 l14) (road_is_free l6 l14) (road_is_free l7 l14) (road_is_free l8 l14) (road_is_free l9 l14) (road_is_free l10 l14) (road_is_free l11 l14) (road_is_free l12 l14) (road_is_free l13 l14) (road_is_free l14 l14) (road_is_free l15 l14) (road_is_free l16 l14) (road_is_free l17 l14) (road_is_free l18 l14) (road_is_free l19 l14) (road_is_free l20 l14) (road_is_free l21 l14) (road_is_free l22 l14) (road_is_free l23 l14) (road_is_free l0 l15) (road_is_free l1 l15) (road_is_free l2 l15) (road_is_free l3 l15) (road_is_free l4 l15) (road_is_free l5 l15) (road_is_free l6 l15) (road_is_free l7 l15) (road_is_free l8 l15) (road_is_free l9 l15) (road_is_free l10 l15) (road_is_free l11 l15) (road_is_free l12 l15) (road_is_free l13 l15) (road_is_free l14 l15) (road_is_free l15 l15) (road_is_free l16 l15) (road_is_free l17 l15) (road_is_free l18 l15) (road_is_free l19 l15) (road_is_free l20 l15) (road_is_free l21 l15) (road_is_free l22 l15) (road_is_free l23 l15) (road_is_free l0 l16) (road_is_free l1 l16) (road_is_free l2 l16) (road_is_free l3 l16) (road_is_free l4 l16) (road_is_free l5 l16) (road_is_free l6 l16) (road_is_free l7 l16) (road_is_free l8 l16) (road_is_free l9 l16) (road_is_free l10 l16) (road_is_free l11 l16) (road_is_free l12 l16) (road_is_free l13 l16) (road_is_free l14 l16) (road_is_free l15 l16) (road_is_free l16 l16) (road_is_free l17 l16) (road_is_free l18 l16) (road_is_free l19 l16) (road_is_free l20 l16) (road_is_free l21 l16) (road_is_free l22 l16) (road_is_free l23 l16) (road_is_free l0 l17) (road_is_free l1 l17) (road_is_free l2 l17) (road_is_free l3 l17) (road_is_free l4 l17) (road_is_free l5 l17) (road_is_free l6 l17) (road_is_free l7 l17) (road_is_free l8 l17) (road_is_free l9 l17) (road_is_free l10 l17) (road_is_free l11 l17) (road_is_free l12 l17) (road_is_free l13 l17) (road_is_free l14 l17) (road_is_free l15 l17) (road_is_free l16 l17) (road_is_free l17 l17) (road_is_free l18 l17) (road_is_free l19 l17) (road_is_free l20 l17) (road_is_free l21 l17) (road_is_free l22 l17) (road_is_free l23 l17) (road_is_free l0 l18) (road_is_free l1 l18) (road_is_free l2 l18) (road_is_free l3 l18) (road_is_free l4 l18) (road_is_free l5 l18) (road_is_free l6 l18) (road_is_free l7 l18) (road_is_free l8 l18) (road_is_free l9 l18) (road_is_free l10 l18) (road_is_free l11 l18) (road_is_free l12 l18) (road_is_free l13 l18) (road_is_free l14 l18) (road_is_free l15 l18) (road_is_free l16 l18) (road_is_free l17 l18) (road_is_free l18 l18) (road_is_free l19 l18) (road_is_free l20 l18) (road_is_free l21 l18) (road_is_free l22 l18) (road_is_free l23 l18) (road_is_free l0 l19) (road_is_free l1 l19) (road_is_free l2 l19) (road_is_free l3 l19) (road_is_free l4 l19) (road_is_free l5 l19) (road_is_free l6 l19) (road_is_free l7 l19) (road_is_free l8 l19) (road_is_free l9 l19) (road_is_free l10 l19) (road_is_free l11 l19) (road_is_free l12 l19) (road_is_free l13 l19) (road_is_free l14 l19) (road_is_free l15 l19) (road_is_free l16 l19) (road_is_free l17 l19) (road_is_free l18 l19) (road_is_free l19 l19) (road_is_free l20 l19) (road_is_free l21 l19) (road_is_free l22 l19) (road_is_free l23 l19) (road_is_free l0 l20) (road_is_free l1 l20) (road_is_free l2 l20) (road_is_free l3 l20) (road_is_free l4 l20) (road_is_free l5 l20) (road_is_free l6 l20) (road_is_free l7 l20) (road_is_free l8 l20) (road_is_free l9 l20) (road_is_free l10 l20) (road_is_free l11 l20) (road_is_free l12 l20) (road_is_free l13 l20) (road_is_free l14 l20) (road_is_free l15 l20) (road_is_free l16 l20) (road_is_free l17 l20) (road_is_free l18 l20) (road_is_free l19 l20) (road_is_free l20 l20) (road_is_free l21 l20) (road_is_free l22 l20) (road_is_free l23 l20) (road_is_free l0 l21) (road_is_free l1 l21) (road_is_free l2 l21) (road_is_free l3 l21) (road_is_free l4 l21) (road_is_free l5 l21) (road_is_free l6 l21) (road_is_free l7 l21) (road_is_free l8 l21) (road_is_free l9 l21) (road_is_free l10 l21) (road_is_free l11 l21) (road_is_free l12 l21) (road_is_free l13 l21) (road_is_free l14 l21) (road_is_free l15 l21) (road_is_free l16 l21) (road_is_free l17 l21) (road_is_free l18 l21) (road_is_free l19 l21) (road_is_free l20 l21) (road_is_free l21 l21) (road_is_free l22 l21) (road_is_free l23 l21) (road_is_free l0 l22) (road_is_free l1 l22) (road_is_free l2 l22) (road_is_free l3 l22) (road_is_free l4 l22) (road_is_free l5 l22) (road_is_free l6 l22) (road_is_free l7 l22) (road_is_free l8 l22) (road_is_free l9 l22) (road_is_free l10 l22) (road_is_free l11 l22) (road_is_free l12 l22) (road_is_free l13 l22) (road_is_free l14 l22) (road_is_free l15 l22) (road_is_free l16 l22) (road_is_free l17 l22) (road_is_free l18 l22) (road_is_free l19 l22) (road_is_free l20 l22) (road_is_free l21 l22) (road_is_free l22 l22) (road_is_free l23 l22) (road_is_free l0 l23) (road_is_free l1 l23) (road_is_free l2 l23) (road_is_free l3 l23) (road_is_free l4 l23) (road_is_free l5 l23) (road_is_free l6 l23) (road_is_free l7 l23) (road_is_free l8 l23) (road_is_free l9 l23) (road_is_free l10 l23) (road_is_free l11 l23) (road_is_free l12 l23) (road_is_free l13 l23) (road_is_free l14 l23) (road_is_free l15 l23) (road_is_free l16 l23) (road_is_free l17 l23) (road_is_free l18 l23) (road_is_free l19 l23) (road_is_free l20 l23) (road_is_free l21 l23) (road_is_free l22 l23) (road_is_free l23 l23))
 (:goal (and (location_has_package p0 l6) (location_has_package p1 l4) (location_has_package p2 l18) (location_has_package p3 l10) (location_has_package p4 l5) (location_has_package p5 l19) (robot_at r0 l20) (robot_at r1 l21) (robot_at r2 l22)))
 (:metric minimize total-time)
)
