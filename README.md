# Infin8-2024


## About
Welcome to our collaborative project between the Student Activities Council (SAC) and the 8Bit (Magazine Club of IIITB)!<p>
Our innovative website serves as a tool to streamline attendance tracking for student events while fostering a sense of engagement and excitement within the IIITB community. Through the website we hope to enhance overall experience for both organizers and attendees.

## Demo Videos

https://github.com/Sarvesh521/Infin8-2024/assets/122382587/7ba49642-f555-4a45-9908-a4d3090bc689

https://github.com/Sarvesh521/Infin8-2024/assets/122382587/3e4d4575-334b-466b-8071-2cd8beb682eb

https://github.com/Sarvesh521/Infin8-2024/assets/122382587/bc0189c4-0251-47df-a898-2992070fc134

## TechStack
<img height="50" src="https://github.com/marwin1991/profile-technology-icons/assets/62091613/9bf5650b-e534-4eae-8a26-8379d076f3b4"> $~~~~$ <img height="50" src="https://user-images.githubusercontent.com/25181517/183896128-ec99105a-ec1a-4d85-b08b-1aa1620b2046.png"> $~~~~$ <img height="50" src="https://user-images.githubusercontent.com/25181517/183423507-c056a6f9-1ba8-4312-a350-19bcbc5a8697.png"> $~~~~$ <img height="50" src="https://user-images.githubusercontent.com/25181517/117447155-6a868a00-af3d-11eb-9cfe-245df15c9f3f.png"> $~~~~$ <img height="50" src="https://user-images.githubusercontent.com/25181517/192158954-f88b5814-d510-4564-b285-dff7d6400dad.png"> $~~~~$ <img height="50" src="https://user-images.githubusercontent.com/25181517/183898674-75a4a1b1-f960-4ea9-abcb-637170a00a75.png"> $~~~~$ <img height="50" src="https://user-images.githubusercontent.com/25181517/117207330-263ba280-adf4-11eb-9b97-0ac5b40bc3be.png"> $~~~~$ <img height="50" src="https://user-images.githubusercontent.com/25181517/183896132-54262f2e-6d98-41e3-8888-e40ab5a17326.png">


## Features
1. Attendance Tracking : Our website simplifies the process of monitoring attendance allowing organizers to focus on creating memorable experiences and allowing SAC to make informed decisions for future events.
2. Interactive Game - 7 Up 7 Down (Gambling): Students can enjoy the thrill of gambling without risking real points (indirecly cash prizes!) by playing our interactive game, 7 Up 7 Down. This addictive game offers an engaging experience while adhering to responsible gaming principles.
3. User Authentication and Forgotten Password Functionality: Our website ensures secure access with robust user authentication mechanisms. We have added a system to verify email used by sending a verification link to the respective email, thereby ensuring credibility. Additionally, we've implemented a forgotten password feature that allows users to reset their passwords conveniently. Leveraging Django's email capabilities, users receive automated email notifications and instructions for resetting their passwords, enhancing the overall security and user experience of our platform.
4. Attendance Code Points and Leaderboard: Earn points by participating in events and submitting attendance codes! Our platform maintains a dynamic leaderboard, showcasing the top attendees based on accumulated points. This gamified system encourages active engagement within the IIITB community, fostering healthy competition and rewarding students for their involvement in campus activities. Keep track of your progress and climb the leaderboard to earn recognition for your dedication and participation!


## Installation
1. Clone the repository: `git clone https://github.com/Sarvesh521/Infin8-Deployment.git`
2. Navigate into the project directory: `cd Infin8-Deployment`
3. Install the required packages: `pip install -r requirements.txt`
4. Make necessary migrations: <br>`python manage.py make migrations`<br> `python manage.py migrate`
5. Set app-password and the database: go to `settings.py` and set the fields required to establish a connection between your local database and the website, also set the email-id along with the corresponding app-password, to enable verification via email.
6. Run the server: `python manage.py runserver`

## Installation Instructions

This file contains only the installation and setup steps using Docker, Docker Compose, and Helm Charts.

---

### Prerequisites

- Git must be installed.
- Python and pip must be installed.
- Docker and Docker Compose must be installed.
- Helm must be installed.
- (For Helm) A Kubernetes cluster (e.g., Minikube) is available.

---

### 1. Clone and Setup for Local Development

```bash
# Clone the repository
git clone https://github.com/Sarvesh521/Infin8-Deployment.git

# Navigate into the project directory
cd Infin8-Deployment

# Install the required packages
pip install -r [requirements.txt](http://_vscodecontentref_/0)

# Make necessary migrations
python manage.py make migrations
python manage.py migrate

# Set your app-password, database configuration, and email credentials in settings.py before running.

# Run the server locally
python manage.py runserver
```

### 2. Docker Setup
```bash
#Build the Docker Image
docker build -t sarvesh717/infin8:v10 .

# Run the Docker Container
docker run -d -p 8000:8000 --name infin8 sarvesh717/infin8:v10
```

### 3. Docker Compose Setup
```bash
#Starting the containers
docker-compose up -d
```

### 4.Helm Chart Setup (Kubernetes)
```bash
# This command installs the release named myapp into the infin8 namespace (which is created if it doesn't exist):
helm install myapp ./myapp-chart -n infin8 --create-namespace

# Run the minikube cluster
minikube service django-service -n infin8
```

## Usage
Open your web browser and navigate to `localhost:8000` to access the login page.

## Deployment
Go to `https://infin8loyalty.iiitb.net/` to checkout the site!! <br> Edit : The site is currently down.

## Team Members
1. Sarvesh Kumar . A : Back-end + Deployment 
2. Dhruv Kothari : Back-end
3. P.V.S Sukeerithi : Front-end
