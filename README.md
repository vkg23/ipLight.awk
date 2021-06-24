

### Built With
* [GNU AWK](https://www.gnu.org/software/gawk/)


<!-- GETTING STARTED -->
## Getting Started

### Prerequisites
Shell with AWK ready . 

Example: 

* shell
  ```
  ifconfig | awk -f ipLight.awk
  cat "file with output any text with IP in any order" | awk -f ipLight.awk
  ```

### Installation

1. Copy the script locally  [https://github.com/vkg23/](ipLight.awk)


<!-- USAGE EXAMPLES -->
## Usage


_Refer to Getting Started_



<!-- ROADMAP -->
## Roadmap

Strengthen the REGEX Check for valid IP's ( At present blind skip of Loopbacks and 255 SUBNET strings ) 


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request
