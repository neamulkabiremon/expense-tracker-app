#!/bin/bash

echo "🔎 Fixing wrong imports inside ./src..."

# Define the SED_COMMAND based on OS
if sed --version >/dev/null 2>&1; then
  # GNU sed (Linux)
  SED_COMMAND="sed -i"
else
  # BSD sed (Mac, Alpine)
  SED_COMMAND="sed -i ''"
fi

# Fix ../cards → ../Cards
find ./src -type f \( -name "*.jsx" -o -name "*.js" \) -print0 | while IFS= read -r -d '' file; do
  $SED_COMMAND 's#../cards/#../Cards/#g' "$file"
done

# Fix ../charts → ../Charts
find ./src -type f \( -name "*.jsx" -o -name "*.js" \) -print0 | while IFS= read -r -d '' file; do
  $SED_COMMAND 's#../charts/#../Charts/#g' "$file"
done

# Fix ../../components/layouts → ../../components/Layouts
find ./src -type f \( -name "*.jsx" -o -name "*.js" \) -print0 | while IFS= read -r -d '' file; do
  $SED_COMMAND 's#../../components/layouts/#../../components/Layouts/#g' "$file"
done

echo "🎯 All import paths corrected successfully!"
