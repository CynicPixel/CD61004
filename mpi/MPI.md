# MESSAGE PASSING INTERFACE (Week 2)

Compiler/OS/Language agnostic parallelization framework

Given a serial program we will try and parallelize using MPI

MPI has custom libraries/API interfaces with functions we can call.
Upto 90% speedup can be achieved with only a handful of these methods

Message passing is the limiting step

T_parallel= T_realcomputation + Tcommunication

In MPI we launch the same executable k times to achieve parallelism, with one process (id 0) as parent, and the rest as child

MPI library has a global communicator MPI_COMM_WORLD having all processes, and we cna have subcommmunicators for subsets of processes

We use call (subroutine name) to call MPI subroutines from Fortran.

  P1    ->      P2
(send)      (recieved)

Most mpi programs cna be written with only the following functions

MPI_INIT
MPI_COMM_SIZE
MPI_COMM_RANK
MPI_FINALIZE

Language  compiler   command/wrapper
C           gcc
C++         g++
Fortran   gfortran      mpi90

These correspond to the openmpi library


