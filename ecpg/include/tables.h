typedef struct{
   int cont_id;
   char cont_title [10+1] ;//=malloc(sizeof(cont_title))	;
   char cont_des [10+1];
   char cont_date [10+1];
}CONT_T;
#define CONT_SIZE (sizeof(CONT_T))
