# Combination Scripts

## Intro

To make training and testing run faster, it is necessary to combine multiple configs into a single file, so that we only need load the AAI environment once.

In this folder, there is a PowerShell function for combining YML files flexibly and quickly. The function combines YML files in alphabetical order and indexes them appropriately.

If you wish to do curriculum learning, at the moment, we advise creating separate configs for each stage of the curriculum, and recalling the environment with each config as the curriculum progresses.

A function that generates configs in order is in development.

## How to call the function

Call the function using dot sourcing. Check it has successfully loaded by calling `dir function:`. You should see a function called `Combine-Configs` in your list.

Now call the function with something like 
`Combine-Configs -regex "OP-PTPC-Size-ImpExp-0.5Exp1-CloseLeft*.yml" -name "config_combinor\combined_config.yml"`