#!/bin/bash

set -e

echo "🔎 Fixing wrong imports inside ./src..."

# Find all .js and .jsx files inside ./src
find ./src -type f \( -name "*.js" -o -name "*.jsx" \) | while read -r file; do
  echo "✅ Fixing file: $file"

  # Correct imports from wrong folders to correct ones
  sed -i 's|components/layouts/|components/Layouts/|g' "$file"
  sed -i 's|components/cards/|components/Cards/|g' "$file"
  sed -i 's|components/charts/|components/Charts/|g' "$file"
done

echo "🎯 All imports corrected successfully!"
