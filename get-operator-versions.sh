#!/usr/bin/env bash

function main() {

    # Pre-check
    if [ $# -gt 0 ]; then
        print_usage_info       
    fi

    get_operators_version
}

# Print usage information
function print_usage_info(){
    echo "Usage: $0 [OPTIONS]"
    echo -e "Options:"
    echo "  --no-login        Add this flag to skip log in process"
    exit 1
}

# Get operators version
function get_operators_version(){
    echo "Execute get_operators_version"
    cat ./configuration.json | jq '.' 
    
}

main "$@" 
