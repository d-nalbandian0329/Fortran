! ボツ
! Judge the number is prime number or not.

program main
	implicit none

	integer num

	write(*, fmt='(A)', advance='no') 'Input Number : '
	read *, num

	call printPrimeNumber(num)

	!write(*, fmt='(I0,A)', advance='no') num, ' : '
	!If(isPrime(num)) then
	!	write(*, fmt='(A)') 'Prime'
	!else
	!	write(*, fmt='(A)') 'Not Prime'
	!end if

contains
	function fermatLittleTheorem(a, p)
		integer fermatLittleTheorem
		integer a, p, i
		integer :: m = 1

		do i = 1, p, 1
			m = m * mod(a, p)
		end do

		fermatLittleTheorem = mod(m, p)
	end function fermatLittleTheorem


	function isPrime(n)
		logical isPrime
		integer n

		if(n == 2) then
			isPrime = .true.
		else if(mod(n, 2) == 0) then
			isPrime = .false.
		else if(fermatLittleTheorem(2, n) == 2) then
			isPrime = .true.
		else
			isPrime = .false.
		end if
	end function isPrime

	subroutine printPrimeNumber(n)
		integer n, i

		write(*, fmt='(A)', advance='no') "Result :"

		do i = 2, n, 1
			if(isPrime(i)) then
				write(*, fmt='(A,I0)', advance='no') ' ', i
				!write(*, fmt='(I0A)') i, 'is Prime'
			else
				!write(*, fmt='(I0A)') i, 'is not Prime'
			end if
		end do

		print *, ""
	end subroutine printPrimeNumber
end program main
