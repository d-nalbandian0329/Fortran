! subroutine SubName([Parameters,...])
!   Definitions of Parameters
!   Process
! end [subroutine]

! Calling of subroutine
! call SubName()

! ResultType function FuncName([Parameters,...])
!   Definition of Parameters
!   Process
! end [function]

! function FuncName([Parameters,...])
!   Definition of Parameters and ResultType of this function
!   Process
! end [function]

! ex.)
! function addone(i)
!   integer i
!   addone = i + 1
! end function

! function func_name() result(result_var)
!   result_type result_var
!
!   ...
! end function


! @ optional parameters
! subroutine mysub(x,y,z)
!   real x, y
!   real, optional :: z
!
!   ...
! end subroutine


program main
	implicit none

	write(*, '(A,I0)') 'sigma(1)     : ', sigma(1)
	write(*, '(A,I0)') 'sigma(1,1)   : ', sigma(1,1)
	write(*, '(A,I0)') 'sigma(1,1,1) : ', sigma(1,1,1)

	stop
contains
	function sigma(x, y, z) result(ret)
		integer ret
		integer, optional :: x, y ,z

		ret = 0
		if(present(x)) then
			ret = ret + x
		end if
		if(present(y)) then
			ret = ret + y
		end if
		if(present(z)) then
			ret = ret + z
		end if

		return
	end function
end program main

