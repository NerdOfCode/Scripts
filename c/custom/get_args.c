
char get_args(int argc, char *argv[]){
  if(argc == 1){
    //No arguements except the invokation
    return 1;
  }else{
    for(int i=1;i < argc; i++)
      printf("File Execution Arguements involved: %s\n",argv[i]);
      return 0;
      }
  }
