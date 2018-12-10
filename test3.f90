
! 整数型		integer
! 実数型		real
! 倍精度実数型	double precision
! 複素数型		complex
! 倍精度複素数型complex(kind(0d0))
! 論理型		logical
! 文字型		character

! 変数名 : 英字で始まる任意の英数字とアンダースコアの組み合わせ、最大31文字
! fortran 90/95 の標準規格

program main
	implicit none

	integer aa
	real bb, sub_total
	complex(kind(0d0)) dt1

	! 文字列変数の宣言例
	character a			! 長さ1文字の変数
	character(len=4) b	! 4
	character(4) c		! You can omit "len="
	character*4 d		! これもあり
	character e*4, f*5

	real r
	real, parameter :: pi = 3.14

	r = 5.0

	print *, r*r*pi

	call sub2

contains
	subroutine sub2
		character(3) a_	! ::はなくてよい
		character(len=4) :: b_ = "ABCD"

		a_ = "XYZ"

		print *, a_
		print *, b_
	end subroutine sub2
end program main

! real    : 推奨
! real(4) : 種別番号4の意味がコンパイラによって異なる(4byteを意味するとは限らない)
! real*4  : Fortran標準に準拠していない

! double precision : 推奨 
! real(8) : 種別番号8が8byteを意味するとは限らない、コンパイラによって異なる
! real*8  : Fortran標準に準拠していない

! complex : 単精度複素数
! complex(4) : 種別番号の定義はコンパイラによって異なる
! complex*8  : Fortran標準に準拠していない

! complex(kind(0d0)) : 推奨
! complex(8) : 種別番号はコンパイラによって異なる
! complex*16 : Fortran標準に準拠していない
! double complex : Fortran標準に準拠していない


! 変数宣言時に初期値を指定する
! integer :: a = 99
! real :: b = 5.2
! complex :: c = (1.2, 3.4)
!

! ＠変数に属性をつけることができる
! 　属性			意味
! dimension		変数の寸法と次元を指定する
! parameter		変数が定数である旨を指定
! alocatable	変数が割り付け（動的な領域確保）可能であることを指定
!
!＊属性をつける場合もセミコロンが必要
!


