      program test

      integer ii, jj, kk
      common/ijk/ ii, jj, kk
      real*8  ff
      character*32 cc
      real, dimension(5) :: numbers
      real, dimension(5) :: numbers2
    
      ii = 2
      jj = 3
      kk = 4
      ff = 9.0567
      cc = 'Example of a character string'
      numbers = (/1.5,3.2,4.5,0.9,7.2 /)

      write(6,10) ii, ff
10    format('ii= ',i2,' ff= ',f10.4)

      call abc(ii)

      write(6,20) ii
20    format('ii= ',i2)

      write(6,30) ii, jj, kk

      call doubleIJK(cc)

      call getrandom(numbers)
      do i = 1, 5
        Print *, numbers(i)
      end do

      write(6,30) ii, jj, kk
30    format('ii= ',i2,' jj= ', i2, ' kk= ', i2)

      write(6, 40) cc
40    format(a32)

      stop
      end

      subroutine abc(jj)
      jj = jj * 2
      return
      end
