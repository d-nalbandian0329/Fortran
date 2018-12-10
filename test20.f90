program main
	implicit none
	integer, parameter :: N = 10
	real, dimension(N) :: hoge
	integer i

	hoge = (/(i*2,i=1,N)/)

	print *, hoge

	print *, sum(hoge)
	print *, minval(hoge)
	print *, maxval(hoge)
end program main
