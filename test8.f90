! if (condition) then 
!   //process
! end if
!
! if (condition1) then
!
! else if(condition2) then
!
! else
!
! end if
!

! comparison operator
! .lt. <    less than
! .le. <=   less equal
! .eq. ==   equal
! .ne. /=   not equal
! .gt. >    greater than
! .ge. >=   greater equal
!

! logical operator
! .not.  Not
! .and.  And
! .or.   Or

! these operators compare logical value of opeland
! .eqv.  
! .neqv. like Exclusive Or

! body mass index
program main
	implicit none

	double precision height, weight
	print *, 'height[cm] : '
	read *, height

	print *, 'weight[kg] : '
	read *, weight

	call displayMessage(calculateBMI(height, weight))

contains
	function calculateBMI(h, w)
		double precision calculateBMI
		double precision h, w

		h = h / 100.0d0

		calculateBMI = w / h ** 2
	end function calculateBMI

	subroutine displayMessage(val)
		double precision val

		if(val < 18.5d0) then
			print *, "Underweight"
		else if(18.5d0 <= val .and. val < 25.0d0) then
			print *, "Normal"
		else if(25.0d0 <= val .and. val < 30.0d0) then
			print *, "Overweight"
		else if(30.0d0 <= val) then
			print *, "Obese"
		end if
	end subroutine displayMessage

end program main

