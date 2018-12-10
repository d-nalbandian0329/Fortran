! 定数表現
! 整数 : 数値の前に符号をつけてもおｋ, 省略時は正の数
!
! 12
! +123
! -12
! 0

! 単精度実数
! 1.23
! 1.23e0
! -1.23e3
! +1.24e-3

! 倍精度実数
! 1.23d0
! -1.23d3
! +1.23d-1

! 注意：倍精度と単精度をごっちゃにしない
! double precision a
! a = 1.23	! 倍精度実数の変数に単精度実数のリテラルを代入している
! print *, a
!
! output : 1.2300000190734863

! 複素数  a + bi
! a, b はそれぞれ実数を指定する
!
! 単精度複素数
! (1.23, -1.4)
! (1.2e-3, 2.0)
!
! 倍精度複素数
! (1.23d0, -1.4d0)
! (1.2d-3, 2.0d0)

! 文字 : ' or " で括って表現する
! ' で括った場合に ' を連続させるとひとつの ' を意味する
! "についても同様
!

! 論理定数
! .true.
! .false.
! 大文字小文字は関係なし
! .TRUE.
! .FALSE.

! 構造型
! type student
!   character(32) :: name
!   integer :: age
! end type student
!
! declaration and access to member
! type(student) :: a
! a%name = "Sato"
! a%age = 18
!
! 構造型の定数表現 : 型の名前に続いてカッコでくくられた形で各成分を列記
! a = student("Sato", 18)
!
!
!
program main
	implicit none

	type point
		real :: x, y
	end type point

	type line
		type(point) :: p1, p2
	end type line

	type(line) m

	double precision :: a = 1.23

	print *, a

	print *, 'ABC'
	print *, "ABC"
	print *, 'A "plus" B'
	print *, "He's"
	print *, 'He''s'
	print *, "AB""CD"


	m = line(point(0.,0.), point(1.,1.))

	print *, m

end program main

