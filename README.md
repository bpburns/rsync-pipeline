# rsync-pipeline
A data processing pipeline using rsync

# Overview
It turns out that file systems are great at managing state. This pipeline came about from a project I worked on long ago where I had to pull files from a machine that supported only an ancient version of rsync and process them locally. The system uses rsync to move files from one pipeline stage to the next and keeps track of the state of the pipeline using only the remote and local file systems -- no databases or other fancy job processing queues are necessary.

The pipeline guarantees at-least-once processing of input files, similar to other things you may be familiar with, like TCP and Flume.

# Usage
In this example, new files for processing come into the `inbox` folder. As files are processed, they move through each of the three `stage`
folders, `stage_1`, `stage_2`, and `stage_3`. Finally, processed files are moved to the `outbox` folder, indicating that they are done.
