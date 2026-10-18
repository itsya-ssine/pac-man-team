# Risk analysis

| Risk                                                    | Likelihood | Impact | Mitigation |
|---------------------------------------------------------|------------|--------|------------|
| Assigned A-Maze-ing package interface differs from plan | Medium     | High   | All access isolated in `MazeAdapter`; our code adapts, never the package |
| Package fails or is reinstalled differently at defense  | Medium     | High   | Clean error handling, no traceback; test with a fresh install |
| Graphics library call has no MLX equivalent             | Medium     | High   | Only `Renderer` touches the library; check each call against MLX |
| Config file changed during defense                      | High       | Medium | Clamp to safe defaults, log clearly, ignore unknown keys |
| Crash on unexpected input (config, highscore file)      | Medium     | High   | try/except at boundaries, context managers, top-level guard |
| Packaging fails on another machine                      | Medium     | High   | Scripted build, rehearse regeneration before the review |
| Public platform upload problems (unlisted build)        | Low        | Medium | Create the account and test the upload early |
| Unequal workload or merge conflicts (2 members)         | Medium     | Medium | Split by module, short branches, review each other's merges |
| Not able to explain AI-assisted code at defense         | Medium     | High   | Review and discuss every generated part together |