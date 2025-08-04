program read_lines
    implicit none
    real :: r1, r2, r3, r4, r5, r6
    integer :: i1, i2
    character(len=6) :: a1
    character(len=1) :: a2

    open(unit=1, file='input4.pdb', action='read', status='old')
    read(1, *) a1, r1, r2, r3, r4, r5, r6, a2, i1, i2
    close(1)

    write(*,'(a6,4x,f5.3,5x,f5.3,5x,f5.3,3x,f5.3,3x,f5.3,5x,f5.3,5x,a1,x,i4,x,i4)') &
        a1, r1, r2, r3, r4, r5, r6, a2, i1, i2
end program read_lines
