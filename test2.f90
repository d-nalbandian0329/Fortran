! & 行継続
! コメントの開始はexcramation mark
! 複数の文をセミコロンで区切る

![program プログラム名]
!  [宣言部]
!  [実行部]
![contains
!  内部副プログラム]
!end [program [プログラム名]]

! 最小のプログラム
!	print *, 'Hello,world!'
! end


program main
	implicit none
	call doAllProcess
end program main


subroutine doAllProcess
	implicit none

	integer i, j
	i = 10
	j = 20

	print *, i, j

end subroutine doAllProcess




! プログラム単位
! ・主プロフラム
! ・外部副プログラム
! ・モジュール


! ・主プログラム
!　内部副プログラム

! ・外部副プログラム
! 内部副プログラム

! ・モジュール
!   ・モジュール副プログラム
!      内部副プログラム

