! do loop
! do 変数=初期値,最終値[,刻み値]
!   繰り返したい処理
! end do
!
! integer i
!
! do i = 1, 10
!   print *, i
! end do
!
! exit文 : loopを途中で脱出する際に使う
!
! do ...
!   if(condition)
!     exit
! end do
!
! cycle文 : 次のループへ、cycle文以降の処理は行われない
!
! do i = 0,10,1
!   if(condition)
!     cycle
!   any_process
! end do
!

! infinite loop
! 
! do
!   繰り返し　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
! end do
!

program main
	implicit none

	integer, parameter :: N = 5
	integer, dimension(N) :: score_set
	integer total, i

	data score_set/N*0/, total,i/2*0/

	do i = 0, N-1, 1
		print *, 'Score No.', i, ' : '
		read *, score_set(i)
	end do

	do i = 0, N-1, 1
		total = total + score_set(i)
	end do

	print *, 'Score Average : ', total/dble(N)
end program main

