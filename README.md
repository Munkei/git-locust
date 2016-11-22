# Git Locust #

>   **CAVEAT LECTOR** This software comes without any form of guarantee. It
>   *might* cause damage in the form of loss of data and/or time.

**L**ines **O**f **C**ode **U**h, **S**omething… **T**ime!

Generates a graph of the amount of code — per language as well as total — over
time in a [Git] repository. [cloc] does most of the heavy work, and [Google
Charts] does the drawing.

## Requirements ##

[cloc], a web browser (for viewing) and a bucket of patience.

## Usage ##

In it’s simplest form, from within a Git repository run:

``` shell
git locust
```

For more details:

``` shell
git help locust
```

## License and Copyright ##

Copyright (C) 2016 Theo ‘Biffen’ Willows

This program is free software; you can redistribute it and/or modify it under
the terms of either: the GNU General Public License as published by the Free
Software Foundation; or the Artistic License.

See <http://dev.perl.org/licenses/> for more information.

  [cloc]: https://github.com/AlDanial/cloc
  [Git]: https://git-scm.com/
  [Google Charts]: https://developers.google.com/chart/
