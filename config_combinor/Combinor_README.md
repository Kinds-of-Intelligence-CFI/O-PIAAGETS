# Combination Scripts

To make training and testing run faster, it is necessary to combine multiple configs into a single file, so that we only need load the AAI environment once.

In this folder, there is a PowerShell function for combining YML files flexibly and quickly. The function combines YML files with `-1` as the index for the `arenas` Item. This means that configs are presented in a random order once the environment is loaded. You may set a seed in the Python call to fix the order of presentation, for reproducibility.

If you wish to do curriculum learning, at the moment, we advise creating separate configs for each stage of the curriculum, and recalling the environment with each config as the curriculum progresses.

A function that generates configs in order is in development.