
! select case (式)
! [case 選択肢
!    ブロック]...
! end select
!

! 式はinteger, character, logical型のスカラーでなければならない
! case(1)
! case(下限:上限)　下限と上限のどちらかを省略できる

! カンマで区切った並びでの指定も可能
! case(1,2,5:10,20)

! どのケースにも該当しない場合は
! case default

! 受け取った数値が正・負・0のどれかを判定する
! select case (n)  ! n が対象
!   case (:-1)     ! -1以下の場合
!     fugo = -1
!   case (0)
!     fugo = 0
!   case (1:)
!     fugo = 1
! end select


program main
	implicit none

	call print_result(input_digit('Digit : '))

contains
	function input_digit(msg)
		integer input_digit
		character(*) msg

		print *, msg
		read *, input_digit
	end function input_digit

	subroutine print_result(n)
		integer n

		select case(n)
			case (1)
				print *, "one"
			case (2)
				print *, "two"
			case (3)
				print *, "three"
			case (4)
				print *, "four"
			case (5)
				print *, "five"
			case (6:)
				print *, "large number"
		end select
	end subroutine print_result
end program main

