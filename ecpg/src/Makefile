#--------------------------------------------------------------------
PROGRAM = pgtest \
          pgconn \
          pg01   \
          pg02   \
          pg03   \
          pg04   \
          pg05   \
          pg06   \
          pg07   \
          pg08   \
          pg09   \
          pgd01  \
          pgd02  \
          pgd03  \
          pgd04  \
          pgd05  \
          pgd06  \
          pgd07  \
	  data
#--------------------------------------------------------------------
pgtest = pgtest.pgc
pgconn = pgconn.pgc
pg01   = pg01.pgc pgutil.pgc
pg02   = pg02.pgc pgutil.pgc
pg03   = pg03.pgc pgutil.pgc
pg04   = pg04.pgc pgutil.pgc
pg05   = pg05.pgc pgutil.pgc
pg06   = pg06.pgc pgutil.pgc
pg07   = pg07.pgc pgutil.pgc
pg08   = pg08.pgc pgutil.pgc
pg09   = pg09.pgc pgutil.pgc
pgd01  = pgd01.pgc pgutil.pgc
pgd02  = pgd02.pgc pgutil.pgc
pgd03  = pgd03.pgc pgutil.pgc
pgd04  = pgd04.pgc pgutil.pgc
pgd05  = pgd05.pgc pgutil.pgc
pgd06  = pgd06.pgc pgutil.pgc
pgd07  = pgd07.pgc pgutil.pgc
data    = data.pgc pgutil.pgc
#-------------------------------------------------------------------
LFLAGS = 
#-------------------------------------------------------------------
all: $(PROGRAM)
#-------------------------------------------------------------------
build: $(OBJS)
	gcc $(LFLAGS) -o $(USRBINDIR)/$(EXE) $(OBJS) $(DFLAGS) -I$(USRINCDIR) -I$(PGINC) -L$(PGLIB) $(USRLIBS) -lecpg -lpq
	strip $(USRBINDIR)/$(EXE)
$(PROGRAM):
	@echo ''
	@echo '<<------------[$@] Compile & Link Start ----------------->>'
	@echo ''
	$(MAKE) -f $(MAKEFILE) OBJS="`echo $($@)|sed 's/\.pgc/\.o/g'`" EXE=$@ build
	@echo ''
	@echo '<<------------[$@] Comiple & Link Complete--------------->>'
	@echo ''
#-------------------------------------------------------------------
.SUFFIXES: .pc .c .o .typ .h .pgc
.pgc.c:
	@echo '---[ $*.pgc -> $*.c ] ---------------------------'
	ecpg -o$(USRSRCDIR)/$*.c -I$(USRINCDIR) -I$(PGINC) $(USRSRCDIR)/$*.pgc
.pgc.o:
	@echo '---[ $*.pgc -> $*.o ] -----------------------------'
	ecpg -o$(USRSRCDIR)/$*.c -I$(USRINCDIR) -I$(PGINC) $(USRSRCDIR)/$*.pgc
	cc -c $(USRSRCDIR)/$*.c $(CFLAGS) $(COMPFLAGS) -I$(USRINCDIR) -I$(PGINC) -L$(PGLIB)
.c.o:
	@echo '---[ $*.c -> $*.o ] -----------------------------'
	cc -c  $(USRSRCDIR)/$*.c $(CFLAGS) $(COMPFLAGS) -I$(USRINCDIR) -I$(PGINC) -L$(PGLIB) 
#------------------------------------------------------------------
#USRLIBS= $(USRLIBDIR)/libams${OBJECT_MODE}.a $(USRLIBDIR)/libcomm${OBJECT_MODE}.a $(USRLIBDIR)/libseed${OBJECT_MODE}.a $(USRLIBDIR)/libutil${OBJECT_MODE}.a
USRFLAGS=$(OTHER_H) -DDEBUG -DTRACE
USRHOME=$(HOME)/Cdatabase/ecpg
USRSRCDIR=$(USRHOME)/src
USRBINDIR=$(USRHOME)/bin
#USRRUNDIR=$(USRHOME)/run
#USROBJDIR=$(USRHOME)/obj
USRINCDIR=$(USRHOME)/include
USRLIBDIR=$(USRHOME)/lib
PGINC=/usr/local/pgsql/include
#PGINC=/usr/include/pgsql/server
PGLIB=/usr/local/pgsql/lib
#PGLIB=/usr/lib/pgsql
CFLAGS=$(USRFLAGS)
COMPFLAGS= -DCOMPILEDATE=\"`date +%Y/%m/%d`\"   \
           -DCOMPILETIME=\"`date +%H:%M:%S`\"
#-----------------------------------------------------------------------#
MAKE=make
MAKEFILE=Makefile
#PROCFLAGS= lines=yes include=$(USRINCDIR)
#-----------------------------------------------------------------------#
# User Define Script
#-----------------------------------------------------------------------#
clean:
	rm -rf  *.o *.c
touch:
	touch *.pgc
install:
	touch *.pgc
	make all
#----------------------------------------------------------------------- 
