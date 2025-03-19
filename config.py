import json

class Config:
    def __init__(self, config_file='config.json'):
        """
        Initializes the configuration by loading settings from a JSON file.

        Parameters:
        - config_file (str): Path to the configuration file.
        """
        self.config_file = config_file
        self.settings = self.load_config()

    def load_config(self):
        """
        Loads configuration settings from the JSON file.

        Returns:
        - settings (dict): Configuration settings.
        """
        try:
            with open(self.config_file, 'r') as file:
                settings = json.load(file)
            return settings
        except FileNotFoundError:
            print(f"Configuration file {self.config_file} not found.")
            return {}
        except json.JSONDecodeError as e:
            print(f"Error decoding JSON: {e}")
            return {}

    def get(self, key, default=None):
        """
        Retrieves a configuration value for the given key.

        Parameters:
        - key (str): Configuration key.
        - default: Default value if the key is not found.

        Returns:
        - value: Configuration value or default if key is not found.
        """
        return self.settings.get(key, default)

# Example usage:
# config = Config()
# attention_threshold = config.get('attention_threshold', 0.5)
