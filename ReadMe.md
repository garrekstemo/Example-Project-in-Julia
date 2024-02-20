# Example Experiment Project in Julia

This folder is an example of how you can structure a project to use for experiments.
Open this folder in a coding editor, like Visual Studio Code.
You can use it during experiments for real-time analysis and quick viewing of data.
You can also use it after experiments for data processing.
Keeping one project in a structured folder like this makes it easy to navigate your data, do analysis, retrieve past data, and track when you did experiments.
The project folder is structured as follows.


## Project structure

- data: This folder ONLY contains data. You might have both raw data and processed data. For this reason there are two subfolders.
    - raw: This folder contains ONLY raw data. This data should not be processed in any way.
    - processed: This folder contains only processed data.
- results: I like to put plots, figures, and reports in this folder. Anything in here is annotated and dated so it is easy to understand when I look at it months later.
    - plots: This folder can be a dump of plots while you're running an experiment. I usually make a separate folder for each experiment day and label it. For example, an experiment done on February 20, 2024 might be in a folder named 240220 or 2024_02_20. The format is up to you, but including a date somehow is important. It is also useful if each plot has a date on it so you remember when you collected that data.
    - reports: Sometimes you might do a mini-project while you are doing your main experiments. For example, maybe there is a problem and you are trying to find its source. Documenting the problem and the steps you took to resolve it is useful for you and others in the future. It's easy to create a simple Markdown file (like this ReadMe.md) file and add plots and descriptions.
- notebook: This is your lab notebook. I usually make a new file for each experiment day labeled according to the date. For example, if it is February 20, 2024, the name might be 2024_02_20.jl or 240220.jl.
This is a code file where you will do either real-time analysis or post-experiment analysis. Once you write scripts (in the `src`) folder to read/write data and generate data, it's easy to see your data while you're running an experiment. 
- src: This folder contains all of your reusable source code. There are generally three types of files to keep in here.
    - analysis.jl: Code for data analysis.
    - io.jl: data input/output. Sometimes you need to write a script to read data, reformat it, and write it to a different format.
    - plotting.jl or graphics.jl: Scripts for generating custom plots or figures.

## Final thoughts

This is just one way to organize a project.
Of course, you can come up with your own way but the key thing is to organize your data, code, and results in a way that is easy for you and others to access.