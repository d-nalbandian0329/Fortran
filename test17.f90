
program main
	implicit none

	real weight, time

	call inputData(weight, time)

	write(*, '(A,F0.3)') 'Carolie[kcal] : ', weight * time/60 * 8

contains
	subroutine inputData(weight, time)
		real, intent(out) :: weight, time

		write(*, '(A)', advance='no') 'Weight[kg]    : '
		read *, weight

		write(*, '(A)', advance='no') 'Time[minutes] : '
		read *, time
	end subroutine
end program main
