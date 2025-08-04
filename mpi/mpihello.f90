program main
    implicit none
    include 'mpif.h'
    integer :: id, np, ierr

    call MPI_INIT(ierr)
    call MPI_Comm_size(MPI_COMM_WORLD, np, ierr)
    call MPI_Comm_rank(MPI_COMM_WORLD, id, ierr)

    if (id == 0) then
        write(*,'(a,i0,a,i0)') 'Hello, world! - rank/totproc = ', id, '/', np
    end if

    call MPI_FINALIZE(ierr)
end program main

!mpif90 mpihello.f90 -o mpihello.x
!mpirun -np 2 ./mpihello.x
