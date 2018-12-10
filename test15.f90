! ＠引数授受特性：コンパイラに人的誤りを発見してもらうこと
!                 最適化のための追加情報
!
! 入力用引数   : intent(in)
! 出力用引数   : intent(out)
! 入出力用引数 : intent(inout)


program main
	implicit none

	real x, y, z
	x = 1.0
	y = 2.0
	z = 3.0

	call mysub(x, y, z)

	print *, x, y, z

contains
	subroutine mysub(a, b, c)
		real, intent(in)  :: a
		real, intent(out) :: b
		real, intent(inout) :: c

!		a = 2.0  !入力引数であるのに値が設定されている

		b = a * 10.0

		c = c + 10.0
	end subroutine mysub
end program main

