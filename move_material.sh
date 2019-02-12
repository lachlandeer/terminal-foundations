#!/bin/bash

PDF=$1 # the slides
README=$2
ZIPDIR=$3
TEACH_PATH=$4 # where do you store your teaching material
COURSE_PATH=$5
SUBDIR_PATH=$6 # where this material will go
GIT_PUSH=$7


# get path to course material
COURSE_MATERIAL=$(find $TEACH_PATH -name $COURSE_PATH)
echo "Course Materials are located in:"
echo "$COURSE_MATERIAL"

# create material folder
MATERIAL_FOLDER=$COURSE_MATERIAL/$SUBDIR_PATH
echo "Intro slides will go to:"
echo "$MATERIAL_FOLDER"
mkdir $MATERIAL_FOLDER

# # send slides to material folder
echo "copying files to material folder"
# echo "cp $1 $MATERIAL_FOLDER"
cp $PDF $MATERIAL_FOLDER

# echo "cp $1 $MATERIAL_FOLDER"
cp $README $MATERIAL_FOLDER

cp $ZIPDIR $MATERIAL_FOLDER


if [ "$GIT_PUSH" = "true" ]; then
  echo "pushing material online"
  # push material online
  cd $COURSE_MATERIAL && \
      echo "switching to $COURSE_MATERIAL" && \
      echo "updating local repo" && \
      git pull && \
      echo "adding new files" && \
      git add . && \
      git commit -am "update terminal material" && \
      echo "pushing new material online" && \
      git push
fi
