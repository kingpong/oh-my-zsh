
config_file="$HOME/.aws/aws_config_file"

if [[ -f "$config_file" ]]; then
    export AWS_CONFIG_FILE="$config_file"
fi
