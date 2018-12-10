! Initilization of array
! real :: array(100) = 1e0
! integer, dimension(3,3) ary = 1
!
! integer i(4)
! data i/1,10,100,1000/  ! data(1)==1,data(2)==10,data(3)==100,data(4)==1000
!
! integer a(5)
!
! 配列構成子  (/配列構成要素並び/)
! a = (/1, 2, 3, 4,5/)
!
! integer :: a(5) = (/1, 2, 3, 4, 5/)
! real :: b(6) = (/2., 4., 6., 8., 10., 12./)
!
! 配列構成子の配列構成要素並びはdo文のような形でも指定可能
! 配列構成DO形反復
! integer :: a(5) = (/(i, i = 1, 5)/)
! real :: b(6) = (/(i*5, i=1, 6)/)
!
! 配列構成子は1次元配列を作成することができるもの
! 二次元以上の配列に値を指定する場合はreshape組み込み関数が
! 利用可能
!
! real :: a(2, 3) = reshape((/1., 2., 3., 4., 5., 6./), (/2,3/))
!
! shape関数を使うと記述の冗長性を減らせる
! integer :: b(4,3) = reshape((/(i,i=1,12)/), shape(b))

! 配列全体の代入や算術を行うことができる
! integer :: a(3) = 10  ! 配列すべての値を10に
! a = a + 1             ! 配列の全要素に1を加える
!
!
!

program main
	implicit none

	integer i

	real, dimension(2,3) :: a = reshape((/(i,i=1,6)/), shape(a))

	integer :: b(7) = 10

	print *, a
	print *, b

end program main

