! 型変換
! int(a, [, kind])   切り捨て
! nint(a, [, kind])  四捨五入
! real(a [, kind])   実数への変換
! dble(a)            倍精度実数への変換
!   real(a, kind(0d0)) と等価
! cmplx(x [, y] [, kind]) 複素数への変換

! 組み込み手続きを呼び出した時に与える引数の型によって
! 内部的に別の関数が呼び出される場合がある

! a = sqrt(b)
! このときbの型が倍精度実数であれば内部的に
! 倍精度実数版の関数により計算が行われる
! またbが倍精度複素数であれば内部的に
! 倍精度複素数版が呼ばれる

program main
	implicit none

	double precision :: a = 2.0d0
	complex(kind(0d0)) :: b = (2.0d0,1.0d0)

	print *, sqrt(a)
	print *, sqrt(b)

end program main
