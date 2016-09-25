#! /usr/bin/env sh
rm -rf ../../build/commons-math
rm -f ../../build/reports/commons-math.csv
rm ./*.csv
rm -rf ../../caches/bazel/bazel0.3.1/bazel_cache

make -C ../.. CONFIG=configs/commons-math.mk
mv ../../build/reports/commons-math.csv ./sample1.csv

make -C ../.. CONFIG=configs/commons-math.mk
mv ../../build/reports/commons-math.csv ./sample2.csv

cp ../../build/commons-math/source/src/main/java/org/apache/commons/math3/linear/AbstractFieldMatrix.java .
cp AbstractFieldMatrix.java.modified ../../build/commons-math/source/src/main/java/org/apache/commons/math3/linear/AbstractFieldMatrix.java

make -C ../.. CONFIG=configs/commons-math.mk
mv ../../build/reports/commons-math.csv ./sample3.csv

cp -f AbstractFieldMatrix.java ../../build/commons-math/source/src/main/java/org/apache/commons/math3/linear/AbstractFieldMatrix.java

make -C ../.. CONFIG=configs/commons-math.mk
mv ../../build/reports/commons-math.csv ./sample4.csv
