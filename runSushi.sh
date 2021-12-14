

sushi -s -o .


if [[ $? -eq 0 ]]  # 0
then

echo "Summary generation disabled"


# echo "Creating Profiles and extensions summary pages..."
 ../scripts/makeProfilesAndExtensions.js northernRegion

# echo "Making terminology summary"   # will copy into IG input folder
# ../scripts/makeTerminologySummary.js northernRegion

# echo "Making API summary"
# ../scripts/makeCapabilityStatement.js northernRegion

# echo "Making examples page and uploading"
# ../scripts/makeExamplePage.js northernRegion

else 
echo
echo
echo "There were errors, so the other scripts weren't run..."
fi