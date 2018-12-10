! data文 : 宣言文のあとに記述される非実行文のひとつ
! data 初期化項目並び/初期値表現並び/[[,]初期化項目並び/初期値表現並び]
!
! 初期値並び : 反復回数の指定が可能
! 反復回数*値


program main
	! 変数の暗黙的な宣言の禁止
	! use文がある場合はその後に書く
	implicit none

	integer i, j
	real x, y, z

	integer a(8), b(4)

	!data i,j/1,2/
	!data x,y,z/1.,2.,3./
	!data i,j/1,2/ x,y,z/1.,2.,3./
	!data i,j/1,2/ x,y,z/1.,2.,3./

	data i,j/-100,-100/, x,y,z/3*123./

	! 配列に初期値を与える場合
	data a/1,2,3,4,5,6,7,8/
	data b/4*21/

	print *, i, j, x, y, z
	print *, a
	print *, b

end program main

