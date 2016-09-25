#! /usr/bin/env sh
rm -rf ../../build/multi-16-10
rm -f ../../build/reports/multi-16-10.csv
rm ./*.csv
rm -rf ../../caches/bazel/bazel0.3.1/bazel_cache

make -C ../.. CONFIG=configs/generated_multi.mk
mv ../../build/reports/multi-16-10.csv ./sample1.csv

make -C ../.. CONFIG=configs/generated_multi.mk
mv ../../build/reports/multi-16-10.csv ./sample2.csv

cp ../../build/multi-16-10/source/subproject0/src/main/java/com0/Simple0.java  .
cp Simple0.java.modified ../../build/multi-16-10/source/subproject0/src/main/java/com0/Simple0.java
touch ../../build/multi-16-10/source

make -C ../.. CONFIG=configs/generated_multi.mk
mv ../../build/reports/multi-16-10.csv ./sample3.csv

cp -f Simple0.java ../../build/multi-16-10/source/subproject0/src/main/java/com0/Simple0.java
touch ../../build/multi-16-10/source

make -C ../.. CONFIG=configs/generated_multi.mk
mv ../../build/reports/multi-16-10.csv ./sample4.csv
