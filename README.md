# Bash Text-Processing Exercise Set

170 exercises, 4 levels, all text processing, solvable in 1-30 lines of bash.

## Structure

    easy/medium/hard/expert/NNN-exercise-name/
        question.txt   the task
        input.txt      (and input.txt2 / vars.txt / data/ ... ) the data to process
        test.sh        prints exactly one word: pass or fail

## Workflow

1. Read `question.txt`, look at the data files.
2. Solve it with bash (grep/sed/awk/coreutils or a small script).
3. Save your answer **inside the exercise folder**:
   - data-processing tasks: put the exact output text into `answer.txt`
   - script-writing tasks: save `answer.sh` (running `bash answer.sh` must print
     the exact output, reading files from that folder)
4. Check: `bash test.sh`  ->  `pass` or `fail`

Run everything at once: `bash check-all.sh`

Levels:
- easy 001-040: one tool per problem (head, grep, cut, sort, uniq, tr, sed, awk basics)
- medium 041-080: combining tools, awk arrays, small loops
- hard 081-110: multi-file logic, stateful awk, real mini-programs
- expert 111-170: deep sed (hold space, labels, ranges, backrefs), grep
  (-o -f -x -b -E backrefs, context), gawk (RS tricks, match/RSTART, getline
  patterns, two-file idiom, printf), sort -s/-V/-k, join, comm, paste, cut -c
