import yaml

# Input and output file paths
input_file = "./data/homeserver.yaml"  # Replace with the actual filename
output_file = "secret-keys.yaml"

# Keys to extract
keys_to_extract = ["registration_shared_secret", "macaroon_secret_key", "form_secret"]

def extract_secrets(input_file, output_file, keys):
    try:
        # Read the Synapse configuration file
        with open(input_file, "r") as infile:
            config = yaml.safe_load(infile)
        
        # Extract the desired keys
        secrets = {key: config[key] for key in keys if key in config}
        
        # Write the extracted secrets to a new YAML file
        with open(output_file, "w") as outfile:
            yaml.safe_dump(secrets, outfile, default_flow_style=False)
        
        print(f"Secrets extracted successfully and saved to {output_file}")
    except Exception as e:
        print(f"Error occurred: {e}")

# Run the script
extract_secrets(input_file, output_file, keys_to_extract)
