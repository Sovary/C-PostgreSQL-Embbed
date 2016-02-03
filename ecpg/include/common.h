/*==========================================================================*/
/* PostgrsSQL ecpg Programming Sample                                       */
/*==========================================================================*/
#ifndef __COMMON_H__
#define __COMMON_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <signal.h>

#if 0
#define PGM  __FILE__
#endif
#define PGM (strrchr(__FILE__, '/') ? strrchr(__FILE__, '/') + 1 : __FILE__)
#define LIN  __LINE__

typedef unsigned char BYTE;
typedef unsigned short WORD;
typedef unsigned long ULONG;
typedef unsigned char * LPSTR;

#define D_ENDLESS 1
#define D_OK  0
#define D_NK -1
#define NO    0
#define YES   1
#define SEQU(s,d)       (strncmp(s,d,strlen(d))==0 ? 1 : 0)

/* SQL */
#define SQLCODE         sqlca.sqlcode
#define SQLERRM         sqlca.sqlerrm.sqlerrmc
#define NFOUND          100
#define DUPKEY          -403
#define NCONN           -402
#define SQLOK           0

#define USERNAME "postgres"
#define PASSWORD "testuser"
#define PGDBHOST "tcp:postgresql://127.0.0.1:5432/testd" 



#endif /* __COMMON_H__ */
