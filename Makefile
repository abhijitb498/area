FC = gfortran 
source = nrtype.f90 nrutil.f90 spline_mod.f90 area.f90
all : area


area : $(source)
	$(FC) -o $@  $(source)

install: 
	@cp area /usr/bin/ 
	@cp spline_mod.mod /usr/lib/gcc/x86_64-linux-gnu/9/finclude/

.PHONY : clean

clean:
	@rm -f *.o *.mod area
