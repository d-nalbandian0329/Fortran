! Compare performance.

program main
	implicit none
	integer, parameter :: n = 200
	integer i
	real t1, t2
	real, dimension(n,n*2,n) :: dst
	real, dimension(n*2,n,n) :: src

	src = 99

	call cpu_time(t1)
	do i = 1, 10, 1
		call mycopy_with_intent(src(::2,:,:), dst(:,::2,:), i)
	end do
	call cpu_time(t2)
	write(*, '(A,F0.4)') 'with intent    : ', t2 - t1


	call cpu_time(t1)
	do i = 1, 10, 1
		call mycopy_without_intent(src(::2,:,:), dst(:,::2,:), i)
	end do
	call cpu_time(t2)
	write(*, '(A,F0.4)') 'without intent : ', t2 - t1


contains
	subroutine mycopy_with_intent(src, dst, i)
		! サブルーチン復帰時のコピーが必要なくなる
		real, dimension(n,n,n), intent(in)  :: src
		! サブルーチン呼び出し時のコピーが必要なくなる
		real, dimension(n,n,n), intent(out) :: dst
		integer i

		dst = src + i
	end subroutine mycopy_with_intent

	subroutine mycopy_without_intent(src, dst, i)
		real, dimension(n,n,n) :: src, dst
		integer i

		dst = src + i
	end subroutine mycopy_without_intent
end program main

