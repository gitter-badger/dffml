echo -e 'Years,Expertise,Trust\n6,13,0.7\n' | \
dffml predict all \
  -model scikitlr \
  -model-features Years:int:1 Expertise:int:1 Trust:float:1 \
  -model-predict Salary:float:1 \
  -sources f=csv \
  -source-filename /dev/stdin
