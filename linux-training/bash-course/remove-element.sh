array=(1 2 3 4)
value_to_remove=3

# Rebuild the array without the unwanted value
array=($(
  for item in "${array[@]}"; do
    if [[ "$item" != "$value_to_remove" ]]; then
      echo "$item"
    fi
  done
))

# Print the updated array
echo "Updated array: ${array[@]}"

# Print the length of the array
echo "Length of array: ${#array[@]}"