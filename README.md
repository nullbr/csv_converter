# CSV CONVERTER API

[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
![Ruby Version](https://img.shields.io/badge/ruby_version-3.1.2-blue.svg)
![Rails Version](https://img.shields.io/badge/rails_version-7.0.2-blue.svg)

The CSV Converter App is a Ruby on Rails application that allows users to convert JSON payloads into CSV format. Users can make a POST request to the `/convert` API endpoint with a JSON payload, and the application will respond with the same payload in CSV format.

## Features

- Converts JSON payloads into CSV format.
- Supports arrays of objects as input.
- Handles invalid JSON payloads gracefully.
- Provides a simple and straightforward API interface.

## Prerequisite:

- ruby 3.1.2
- rails 7.0.4

## Installation

1. Install Ruby

2. Install the dependencies by running the following command within the project directory:

   ```bash
   bundle install
   ```

3. Start the Rails server:

   ```bash
   rails server
   ```

4. The application will be accessible at `http://localhost:3000`.

## API Usage

### Endpoint

- **URL**: `/convert`
- **Method**: `POST`

### Request

- **Content-Type**: `application/json`

Example JSON payload:

```json
[
  {
    "name": "Bruno Leite",
    "email": "bruno@example.com"
  },
  {
    "name": "Giulia Smith",
    "email": "giulia@example.com"
  }
]
```

### Response

- **Content-Type**: `text/csv`

Example CSV response:

```csv
name,email
John Doe,john@example.com
Jane Smith,jane@example.com
```

### Error Handling

- If an invalid JSON payload is provided, the application will respond with a `400 Bad Request` status code and the error message "Invalid JSON payload".

## Testing

To run the test suite, execute the following command:

```bash
rspec
rails test
bundle exec rubocop --parallel
```

The tests include unit tests for the `Converter` class as well as request tests for the API.

## Author

- [Bruno Leite](https://github.com/nullbr)
