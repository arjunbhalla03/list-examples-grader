CPATH='.;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission

if [[ -f "student-submission/ListExamples.java" ]]
then
cpy student-submission/ListExamples.java grading-area
cpy TestListExamples.java grading-area
cpy lib grading-area
echo 'Finished cloning'
cd grading-area
javac -cp $CPATH *.java
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples


else
echo 'Repository cloned incorrectly. Please try again.'
exit
fi


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the


# tests
