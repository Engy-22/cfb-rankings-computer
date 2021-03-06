#!/bin/bash

set -e

get_config() {
    jq ".$2" "$1" --raw-output
}

output_path="$DATADIR/$(get_config "$1" output_path)"

WEIGHTS=$(
    cat <<EOF
{
  "Air Force": 1.95,
  "Akron": 200,
  "Alabama": 13000,
  "Appalachian State": 137,
  "Arizona": 19,
  "Arizona State": 137,
  "Arkansas": 500,
  "Arkansas State": 67.5,
  "Army": 137,
  "Auburn": 447,
  "Ball State": 0.09,
  "Baylor": 349,
  "Boise State": 1210,
  "Boston College": 10.5,
  "Bowling Green": 1.95,
  "Buffalo": 2000,
  "BYU": 170,
  "California": 900,
  "Central Michigan": 137,
  "Charlotte": 137,
  "Cincinnati": 48,
  "Clemson": 436.5,
  "Coastal Carolina": null,
  "Colorado": 1300,
  "Colorado State": 270,
  "Connecticut": 47,
  "Duke": 137,
  "East Carolina": 137,
  "Eastern Michigan": 10.5,
  "Florida": 500,
  "Florida Atlantic": 3.1,
  "Florida International": 170,
  "Florida State": 1387,
  "Fresno State": 52,
  "Georgia": 52,
  "Georgia Southern": 10.5,
  "Georgia State": 170,
  "Georgia Tech": 0.0001,
  "Hawai'i": 137,
  "Houston": 170,
  "Illinois": 137,
  "Indiana": 137,
  "Iowa": 3,
  "Iowa State": 0.09,
  "Kansas": 0.21,
  "Kansas State": 19,
  "Kent State": 72,
  "Kentucky": 19,
  "Liberty": null,
  "Louisiana": 137,
  "Louisiana Monroe": 3,
  "Louisiana Tech": 52,
  "Louisville": 0.16,
  "LSU": 436.5,
  "Marshall": 135050,
  "Maryland": 0.9,
  "Memphis": 436.5,
  "Miami": 108000000000,
  "Miami (OH)": 2.4,
  "Michigan": 38,
  "Michigan State": 137,
  "Middle Tennessee": 1250,
  "Minnesota": 15,
  "Mississippi State": 52,
  "Missouri": 436.5,
  "Navy": 137,
  "NC State": 1107,
  "Nebraska": 137,
  "Nevada": 1107,
  "New Mexico": 123,
  "New Mexico State": null,
  "North Carolina": 250,
  "Northern Illinois": 47,
  "North Texas": 10.5,
  "Northwestern": 19,
  "Notre Dame": 137,
  "Ohio": 19,
  "Ohio State": 0.02,
  "Oklahoma": 4070,
  "Oklahoma State": 137,
  "Old Dominion": 440,
  "Ole Miss": 137,
  "Oregon": 2.5,
  "Oregon State": 47.5,
  "Penn State": 170,
  "Pittsburgh": 170,
  "Purdue": 137,
  "Rice": 3.1,
  "Rutgers": 137,
  "San Diego State": 137,
  "San José State": 137,
  "SMU": 1210,
  "South Alabama": 167.5,
  "South Carolina": 5.5,
  "Southern Mississippi": 72,
  "South Florida": 2000,
  "Stanford": 1600000,
  "Syracuse": 0.4,
  "TCU": 1,
  "Temple": 3.1,
  "Tennessee": 137,
  "Texas": 2300,
  "Texas A&M": 137,
  "Texas State": 19,
  "Texas Tech": 1387,
  "Toledo": 735000,
  "Troy": 137,
  "Tulane": 820000,
  "Tulsa": 1182000000000,
  "UAB": 13001,
  "UCF": 137,
  "UCLA": 349,
  "UMass": 137,
  "UNLV": 137,
  "USC": 1387,
  "Utah": 137,
  "Utah State": 2000,
  "UTEP": 137,
  "UT San Antonio": 0.84,
  "Vanderbilt": 137,
  "Virginia": 1387,
  "Virginia Tech": 16,
  "Wake Forest": 137,
  "Washington": 47,
  "Washington State": 170,
  "Western Kentucky": "Infinity",
  "Western Michigan": 1210,
  "West Virginia": 137,
  "Wisconsin": 17.55,
  "Wyoming": 137
}
EOF
)

echo "$WEIGHTS" | jq . >"$output_path"
