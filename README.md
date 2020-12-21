# Slack Add Bot

> A slack bot that takes two numbers with addingtion symbol and returns the summation of the numbers. 


Adds two numbers and returns their sum.
```
  Valid input example: 1+2, 
  Output: 1 + 2 = 3
```
If the input does not have two numbers and an addition symbol in between, respond back with a error message - Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3

## Built With

- Ruby

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites
  - Ruby
### Setup
  - Clone the repository
  - Configure a bot by giving the username and get your token from [here](https://my.slack.com/services/new/bot)
  - create a .env file and add your API token in there.
  ```
  SLACK_API_TOKEN=<YOUR_TOKEN>
  ```


### Install
- Install all the gems.
```
bundle install
```
### Usage
- Run the config file from your terminal.
```
rackup
```
- Open you slack and search for the username that you provided.
- Send a command `1+2`
### Run tests
- To run the test on terminal execute
```
rspec spec
``` 

## Authors

👤 **Author1**

- GitHub: [@shshamim63](https://github.com/githubhandle)
- LinkedIn: [Shakhawat Hossain](https://linkedin.com/shakhawathossainshamim/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](lic.url) licensed.