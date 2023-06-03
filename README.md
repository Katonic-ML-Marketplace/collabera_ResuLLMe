# collabera_ResuLLMe

ResuLLMe Open in Streamlit  

![image](https://github.com/Katonic-ML-Marketplace/collabera_ResuLLMe/assets/124993015/eeae0104-b63d-4aef-bcce-05487ffddb0f)

🚀 Concept
ResuLLMe is a prototype that uses Large Language Models (LLMs) to tailor résumés. It's goal is to enhance résumés to help candidates avoid common mistakes that occur while applying for jobs. It is like a smart career advisor to check your résumé.

🛠 How It Works
ResuLLMe receives your previous CV as a PDF or Word Document. Then, it uses LLMs to:

Improve the résumé following published résumé guidelines by well-reputed schools
Convert the résumés to a JSON Resume format
Render the JSON resume using LaTeX to generate a new PDF of the enhanced resume
🏃 Running
To run ResuLLMe locally, the simplest way is to use Docker:

    docker-compose up -d

🪄 Installation Instructions for Running Natively
To run the app without Docker, you will need to install two things for the app to work. The first item is to install the Python dependencies:

pip install -r requirements.txt
The second item is to install the LaTeX packages:

    xargs sudo apt install -y < packages.txt

if dpkg issue occured while running above command, follow further steps

    sudo rm /var/cache/debconf/*.dat

    sudo dpkg --configure -a sudo apt install -f

    sudo apt update

    sudo apt upgrade

    xargs sudo apt install -y < packages.txt
Lastly, to run ResuLLMe on katonic workspaces, execute:

    streamlit run Main.py --server.port 8050 --server.address 0.0.0.0



