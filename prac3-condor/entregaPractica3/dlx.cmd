universe = vanilla 
executable = dlx
arguments = -s final -d p -c p -f ordena.s
log = dlx.log
input = ordena.s
output = final.0
error = error.0
should_transfer_files = Yes
when_to_transfer_output = ON_EXIT_OR_EVICT
queue
universe = vanilla
executable = dlx
arguments = -s final -d c -c p -f ordena.s
log = dlx.log
input = ordena.s
output = final.1
error = error.1
should_transfer_files = Yes
when_to_transfer_output = ON_EXIT_OR_EVICT
queue
universe = vanilla
executable = dlx
arguments = -s final -d p -c t -f ordena.s
log = dlx.log
input = ordena.s
output = final.2
error = error.2
should_transfer_files = Yes
when_to_transfer_output = ON_EXIT_OR_EVICT
queue
universe = vanilla
executable = dlx
arguments = -s final -d c -c t -f ordena.s
log = dlx.log
input = ordena.s
output = final.3
error = error.3
should_transfer_files = Yes
when_to_transfer_output = ON_EXIT_OR_EVICT
queue
universe = vanilla
executable = dlx
arguments = -s final -d p -c 3 -f ordena3.s
log = dlx.log
input = ordena3.s
output = final.4
error = error.4
should_transfer_files = Yes
when_to_transfer_output = ON_EXIT_OR_EVICT
queue
universe = vanilla
executable = dlx
arguments = -s final -d c -c 3 -f ordena3.s
log = dlx.log
input = ordena3.s
output = final.5
error = error.5
should_transfer_files = Yes
when_to_transfer_output = ON_EXIT_OR_EVICT
queue


