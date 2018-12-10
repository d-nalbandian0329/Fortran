! Judge that input number is prime-number or not.

program main
	implicit none

	integer num

	write(*,fmt='(A)',advance='no') 'Input Nmber : '
	read *, num

	call printPrimeNumber(num)

contains
	subroutine makePrimeNumberList(list, num)
		integer num, i, j
		logical, dimension(0:num) :: list

		do i = 2, int(sqrt(real(num))), 1
			do j = i * 2, num, i
				list(j) = .false.
			end do
		end do
	end subroutine makePrimeNumberList


	subroutine printPrimeNumber(num)
		integer num, i
		logical, dimension(0:num) :: list

		list = .true.

		list(0) = .false.
		list(1) = .false.

		call makePrimeNumberList(list, num)

		write(*, fmt='(A)', advance='no') 'Prime :'
		do i = 0, num, 1
			if(list(i)) then
				write(*, fmt='(X,I0)', advance='no') i
			end if
		end do
		print *, ""
	end subroutine printPrimeNumber
end program main

