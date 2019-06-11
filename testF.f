      program test

      common/ijk/ ii, jj, kk
      real*8  ff
      character*32 cc
      integer, dimension(5) :: numbers
      integer, dimension(5) :: numbers2
      integer, dimension(5) :: numbers3
    
     
      cc = 'Hello World'
      numbers = (/1,3,4,0,7 /)
      numbers2 = (/2,4,5,9,2 /)


      call doubleIJK(cc)

      call sumarr(numbers,numbers2, numbers3)
      
      write(6, 40) cc
40    format(a32)

      stop
      end

     