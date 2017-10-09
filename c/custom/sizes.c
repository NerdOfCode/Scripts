//Global Variables
int size_int,
 size_char,
 size_unsignedc,
 size_signedc,
 size_unsignedint,
 size_short,
 size_unsignedshort,
 size_long,
 size_unsignedlong;

int sizes(){
  size_int = sizeof(int);
  size_char = sizeof(char);
  size_unsignedc = sizeof(unsigned char);
  size_signedc = sizeof(signed char);
  size_unsignedint = sizeof(unsigned int);
  size_short = sizeof(short);
  size_unsignedshort = sizeof(size_unsignedshort);
  size_long = sizeof(long);
  size_unsignedlong = sizeof(unsigned long);

  return
  	size_int,
  	size_char,
  	size_unsignedc,
  	size_signedc,
  	size_unsignedint,
  	size_short,
  	size_unsignedshort,
  	size_long,
  	size_unsignedlong;
}
