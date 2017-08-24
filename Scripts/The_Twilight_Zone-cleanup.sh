# PLEX Television formatter
# Build up a move command where the dst filename is formatted to our specifications
# Expected formatted
# TV Shows/ShowName/Season XX/ShowName - sXXeYY - Optional_Info.ext

# this script is run from the TV show directory

TV_SHOW=$(basename '$(pwd)')

The Twilight Zone (1959)
ls *.avi | sed -r  's|([0-9][0-9]{2})-(.+)| mv "\0" "The Twilight Zone (1959) - s05e@\1@ - \2"|g' | awk -F '@' '{$2 = $2 - 120; printf("%s%02d%s\n", $1, $2, $3 )}'| sh


ls *.avi | sed -r  's|([0-9][0-9]{2})-(.+)| mv "\0" "The Twilight Zone (198) - s05e@\1@ - \2"|g' | awk -F '@' '{$2 = $2 - 120; printf("%s%02d%s\n", $1, $2, $3 )}'



The Twilight Zone (1985)
ls *.avi |\
awk -F '-' '{print "mv \"" $0 "\" " $4 "-" substr($5, 1, length($5)-4) " - " $1 "-" $2 "-" substr($3,1,length($3)-1) substr($5, length($5)-3,4) "\""}' |\
sed -r 's|[^-] RV1 S([0-9]+) E([0-9]+)| "The Twilight Zone (1985) - s\1e\2|g'


#Manual fix offg

admin@nectar:/volume1/video/television/The Twilight Zone (1985)$ find ./  -name "*s03*" -exec cp "{}" Season\ 3/ \; &
admin@nectar:/volume1/video/television/The Twilight Zone (1985)$ find ./  -name "*s02*" -exec cp "{}" Season\ 2/ \; &
admin@nectar:/volume1/video/television/The Twilight Zone (1985)$ find ./  -name "*s01*" -exec cp "{}" Season\ 1/ \; &
