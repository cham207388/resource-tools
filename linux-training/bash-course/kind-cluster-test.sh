#! /bin/bash

## function to create a kind cluster
create-kind-cluster() {
  echo "Creating kind cluster..."
  sleep 2
  echo "Kind cluster is up..."
}

add-metric-server() {
  sleep 2
  echo "Adding metric server..."
}

add-ingress-controller() {
  sleep 2
  echo "Adding ingress controller..."
}

delete-kind-cluster() {
  echo "Deleting kind clusters..."
}

delete-kind-cluster
create-kind-cluster

# Define available add-ons and an array to track selected ones
available_addons=("add-metric-server" "add-ingress-controller" "Done")
selected_addons=()

# Function to remove a value from an array
remove_from_array() {
    local value_to_remove=$1
    local array=("${!2}")
    local new_array=()
    for item in "${array[@]}"; do
        if [[ "$item" != "$value_to_remove" ]]; then
            new_array+=("$item")
        fi
    done
    echo "${new_array[@]}"
}

# Function to display the menu and handle user selection
select_addons() {
    while true; do
        PS3="Please select your add-ons: "

        # Display menu
        echo "Available add-ons:"
        select opt in "${available_addons[@]}"; do
            if [[ -z $opt ]]; then
                echo "Invalid option. Please select again."
                break
            fi

            case $opt in
                "add-metric-server")
                    selected_addons+=("add-metric-server")
                    available_addons=($(remove_from_array "$opt" available_addons[@]))
                    break
                    ;;
                "add-ingress-controller")
                    selected_addons+=("add-ingress-controller")
                    available_addons=($(remove_from_array "$opt" available_addons[@]))
                    break
                    ;;
                "Done")
                    return
                    ;;
                *)
                    echo "Invalid option. Please try again."
                    ;;
            esac
        done

        # Exit if no options remain except "Done"
        if [[ "${#available_addons[@]}" -eq 1 && "${available_addons[0]}" == "Done" ]]; then
            break
        fi
    done
}

# Execute the function to start the selection process
select_addons

# Execute the selected add-ons in the order they were chosen
for addon in "${selected_addons[@]}"; do
    echo "Executing $addon..."
    $addon
done