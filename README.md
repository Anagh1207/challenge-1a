📌 Project Overview
This project implements a reliable pipeline for extracting document titles and hierarchical headings from a variety of PDFs, including:

Text-based PDFs – parsed directly using structural analysis.

Image-based (scanned) PDFs – processed through OCR techniques.

Each page is analyzed individually using customized logic based on its content type.

Key Processing Steps:
Text-based PDFs: Processed with PyMuPDF to extract text elements, using font size, weight, and layout heuristics to identify headings.

Image-based PDFs: OCR is applied using PaddleOCR, followed by text region analysis to classify heading levels.

Extracted content is filtered and organized into a structured format, preserving the document's visual hierarchy.

Final output: A JSON or plain text file containing detected titles and hierarchical headings for each document.

🧠 Libraries & Tools Used
Tool / Library	Purpose
📚 PyMuPDF	Parsing and analyzing structure in text-based PDFs
🧾 PaddleOCR	OCR engine for extracting text from image-based (scanned) PDFs
🧮 Custom Heuristics	Heading detection based on font size, boldness, spacing, and position
🧰 Python	Core scripting and orchestration

🚀 How to Build and Run the Project
🔨 Step 1: Build the Docker Image
bash
Copy
Edit
docker build --platform linux/amd64 -t mysolutionname:somerandomidentifier ./app
▶️ Step 2: Run the Container
For Unix/Linux/macOS:

bash
Copy
Edit
docker run --rm \
  -v $(pwd)/app/input:/app/input \
  -v $(pwd)/app/output:/app/output \
  --network none \
  mysolutionname:somerandomidentifier
For Windows (PowerShell):

powershell
Copy
Edit
docker run --rm `
  -v "${PWD}\app\input:/app/input" `
  -v "${PWD}\app\output:/app/output" `
  --network none `
  mysolutionname:somerandomidentifier
