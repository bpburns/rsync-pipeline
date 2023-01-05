# Stage 1
# inbox -> stage_1
# Add line numbers to input files.
pushd inbox
find . -type f -name 'input*.txt' -exec awk '{outputName = FILENAME; gsub("input", "stage_1_", outputName); outputPath = "../stage_1/" outputName; printf "%s,%d,%s\n", FILENAME, NR, $0 > outputPath}' {} \;
popd

# Stage 2
# stage_2 -> stage_3
# Tag each line in input file with the name of the file.
pushd stage_1
popd

# Stage 3
# stage_3 -> outbox
# Add a '$' character to the end of each line in each input file.
pushd stage_2
popd
