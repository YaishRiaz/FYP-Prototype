$videoTrimData = Import-Csv -Path "D:\IIT Final Year\FYP\Dataset videos\Sheet1.csv"

foreach ($row in $videoTrimData) {

  $inputFile = $row.file_name
  $startTime = $row.start_timestamp
  $endTime = $row.end_timestamp
  $outputFile = $row.output_name
  
  echo "ffmpeg -i $inputFile -ss $startTime -to $endTime -c copy Test\$outputFile.mp4"
  & ffmpeg -i "$inputFile.mp4" -ss $startTime -to $endTime -c copy "Test\$outputFile.mp4"
}