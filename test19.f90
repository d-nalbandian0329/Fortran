program main
	implicit none
	integer,dimension(10) :: score_set
	character(len=8) :: prefix
	integer n, i

	n = inputNumber('Number of students : ')
	do i = 1, n, 1
		write(prefix, '(A,I2,A)') 'No.',i,' : '
		score_set(i) = inputNumber(prefix)
	end do

	call printScore(score_set, n)

contains
	function inputNumber(prefix)
		integer inputNumber
		character(*) prefix

		write(*,fmt='(A)',advance='no') prefix
		read *, inputNumber
	end function inputNumber

	subroutine printScore(score_set, n)
		integer,dimension(*) :: score_set
		integer n, i

		do i = 1, n, 1
			write(*,'(A,I2,A,I0)') 'No.',i,' : ',score_set(i)
		end do
	end subroutine printScore
end program main
