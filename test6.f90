program main
	implicit none

	double precision, parameter :: pi = 3.1415927

	double precision r, h

	print *, 'r : '
	read *, r

	print *, 'h : '
	read *, h

	print *, 'Cylinder Volume : ', r ** 2 * pi * h / 3.0d0

end program main
