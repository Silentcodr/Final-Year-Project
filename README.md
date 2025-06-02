# Final-Year-Project
The project focuses on an AI-Driven Medical Fundraising Verification System to detect and prevent fraudulent medical treatment requests. 
Medical Fund refers to financial assistance provided to individuals or families in need of support for medical treatments, surgeries, or emergencies. Such initiatives often rely on crowdfunding platforms, social media campaigns, or charitable organizations to raise funds. However, the rise of Medical Fund Fraud has become a significant challenge, where fraudsters fabricate treatment documents or bills to solicit donations deceitfully, undermining the trust of donors and affecting genuine beneficiaries. Existing fraud detection systems are often manual or semi-automated, requiring human verification of submitted documents. These processes are time-consuming, error-prone, and struggle to identify sophisticated fraudulent attempts. The lack of comprehensive and automated mechanisms further exacerbates the issue, leading to donor skepticism and reduced willingness to contribute. This project offers an AI-driven approach to detect and block fraudulent medical fund requests. It incorporates advanced YOLOv8 for detecting text regions in uploaded treatment bills and PaddleOCR for extracting and recognizing the text. The extracted information—such as hospital names, patient details, and treatment costs—is verified against a trusted hospital dataset using the Fuzzy Matching Algorithm, which measures the similarity between extracted text and stored records to identify discrepancies effectively. By automating text detection, recognition, and pattern matching, this system ensures accurate verification of medical fund requests, safeguarding donor contributions and fostering trust in medical crowdfunding efforts.

Hardware Requirements:
Processor:Minimum Intel i5 or Equivalent
Ram & Storage: 8GB & 512GB or above
Software Requirements:
Frontend: Bootstrap,Javascript,React
Backend: Python (Flask framework)
Database: MySQL
Server: WampServer (for local development)
Libraries/Packages:Yolov8(Ultralytics), PaddleOCR (paddleocr), Fuzzy matching Alogithm(fuzzywuzzy)

AI-Based Fraud Detection: The system employs YOLOv8 for detecting text regions in medical bills and PaddleOCR for extracting textual information such as hospital names, patient details, and treatment costs. 
Pattern Matching for Verfication: To ensure authenticity, the system utilizes the Fuzzy Matching Algorithm, which compares extracted text with a trusted hospital dataset. 

ADVANTAGES
Detects and blocks fraudulent medical fund requests using AI.
Automates verification, reducing manual effort and errors.
Builds donor trust through transparent validation.
Enables real-time processing for quick fraud detection.

References
[1] 	S. Lee and V. Lehdonvirta, “New digital safety net or just more ‘friendfunding’? Institutional analysis    	of medical crowdfunding in the United States,” Inform. Commun. Soc., vol. 1, no. 3, pp. 1–25, Apr. 	2020.
[2]	 M. J. Renwick and E. Mossialos, “Crowdfunding our health: Economic risks and benefits,” Social 	Sci.  Med., vol. 191, pp. 48–56, Oct. 2017.
[3] 	J. C. Short, D. J. Ketchen, A. F. McKenny, T. H. Allison, and R. D. Ireland, “Research on 	crowdfunding: Reviewing the (very recent) past and celebrating the present,” Entrepreneurship Theory 	Pract., vol. 41, no. 2, pp. 149–160, 2017.
[4] 	M. Meyskens and L. Bird, “Crowdfunding and value creation,” Entrepreneurship Res. J., vol. 5, no. 2, 	pp. 155–166, Jan. 2015.
[5] 	China Charity Alliance. (2019). 2018 China Charity Donation Report. [Online]. Available: 	http://www.charityalliance.org.cn/u/cms/www/ 201909/23083734i5wb.pdf
[6] 	J. Snyder and V. A. Crook “Is there room for privacy in medical crowdfunding?” J. Med. Ethics, vol. 	47, no. 12, p. e49, Nov. 2020.




