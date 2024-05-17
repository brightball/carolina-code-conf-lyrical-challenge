/**
* @file bohemianrhapsody.chruck.c
* @author Jas Eckard <chruck>
*
* @section DESCRIPTION
*
* Bohemian Rhapsody, in the ~~key~~ language of C.
* The third phrase:
*       Open your eyes, look up to the skies and see
* where "to" = 2 and "see" = 0xC
*
*/

#include <stdio.h>

int main(int argc, char **argv)
{

        int lookup = 0, the_skies[] = {0xF, 0xF, 0xF};

        /* probably geekier, since indexes start at 0 */
        fopen("your.eyes", "r"), lookup = the_skies[1] & 0xC;  /* C */

        fopen("your.eyes", "r"), lookup = the_skies[2] & 0xC;  /* C */

        return 0;
}
