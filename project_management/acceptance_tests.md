# Acceptance test plan

Result: Pass / Fail / Not run. Log every bug found and how it was fixed.

| #  | Area        | Test                                                          | Result | Bug / fix |
|----|-------------|---------------------------------------------------------------|--------|-----------|
| 1  | CLI         | 0 args, 2 args, missing file, non-JSON file: clean message    |        |           |
| 2  | Config      | `#` comments ignored, missing key, invalid value, unknown key |        |           |
| 3  | Maze        | Level 1 uses fixed seed, later levels random, PERFECT=False   |        |           |
| 4  | Maze        | Generator failure handled without traceback                   |        |           |
| 5  | Player      | 4 directions (arrows / WASD), no wall crossing, starts center |        |           |
| 6  | Pacgums     | Eating adds X points, level won when all eaten                |        |           |
| 7  | Super       | 4 corners, adds Y points, ghosts edible for a short time      |        |           |
| 8  | Ghosts      | 4 ghosts in corners, chase, flee when edible, respawn         |        |           |
| 9  | Lives       | Life lost on touch, respawn center, game over at 0            |        |           |
| 10 | Scoring     | Ghost eaten adds Z points, score never decreases              |        |           |
| 11 | Progression | At least 10 levels, timer, score and lives kept between levels|        |           |
| 12 | Pause       | Resume and return to main menu                                |        |           |
| 13 | Highscore   | Top 10, name max 10 alphanumeric/space, score >= 0            |        |           |
| 14 | Highscore   | Missing / corrupt file handled, saved and reloaded            |        |           |
| 15 | UI          | Main menu, HUD (score, lives, level, time), end screens       |        |           |
| 16 | Flow        | Menu > play > win/lose > name entry > menu                    |        |           |
| 17 | Cheat mode  | Each cheat works and helps a reviewer                         |        |           |
| 18 | Quality     | `make lint` and `make lint-strict` pass                       |        |           |
| 19 | Packaging   | Installs and launches from the platform build                 |        |           |