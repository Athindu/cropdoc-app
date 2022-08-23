# CropDoc: A Novel Deep Ensemble Learning approach for Plant Pathology Detection

### Project Overview
Agriculture plays a vital role in the economic growth and balance of the country however, the agriculture domain faces many challenges like diseases and pests which causes 30% of cultivation to destruct annually. Hence this research is focused on providing a solution to identify plant diseases, pests, and nutrient deficiencies and provide management and precautionary measures to avoid mass destruction in cultivation. CropDoc introduces a novel deep ensemble learning approach for multi-class classification and a new dataset has been created and used to train the built ensemble model. The implemented approach was benchmarked and tested with a range of evaluation metrics, and the results show that the proposed approach has outperformed all the existing work in the multi-class classification. A cross-platform mobile application was developed under this project with multiple features targeting the end users.

### Technology Stack
<img src="https://github.com/Athindu/cropdoc-app/blob/master/tech_stack.jpg" width="400">

---

## Research Overview
A novel deep learning approach is introduced here for multi-class classification. A deep ensemble approach was implemented here with the use of pre-trained ResNet50, DenseNet121 and EfficientNetB0 models and these 3 models were used as the base models of the ensemble approach.

Classification addressed here is based on plant pathologies and the classification is carried out across 25 classes. The dataset that has been used in this implementation includes 10,000 + images of plant diseases, pest attacks, pests and nutrition deficiencies. Dataset has been divided into 7:2:1 ratio as train, test and validate respectively.  

In this implementation, several base models have been tested with the created dataset to identify the best performing Keras pre-trained model and according to the received results ResNet50, DenseNet121 and EfficientNetB0 models with ImageNet weights were selected. Each chosen base model was modified by removing, adding and freezing layers to achieve the best performance from each model for classification. Base models were subjected to two ensemble techniques, averaging and weighted averaging and from the test results both have performed with similar results hence averaging was utilized when building the Ensemble model. Furthermore, the ensemble model was also optimized by freezing the trained base models, adding more layers, and more parameter tuning. 

The Deep Ensemble approach has outperformed the performance of the base models from all the selected evaluation metrics. Apart from Accuracy, Precision, Recall and F1-Score few more evaluation metrics were selected to avoid the error from data imbalance across the classes. (ROC AUC Score, Log Loss, Cohen Kappa Score, Matthew’s correlation coefficient)

### Architecture of the approach
<img src="https://github.com/Athindu/cropdoc-app/blob/master/architecture.png" width="800">


### Used Libraries
- Keras
- TensorFlow
- sklearn
- Matplotlib
- NumPy
- pandas

---

## Application Overview
A cross platform mobile application was developed with multiple features to increase the user experience within the application. DL model was saved as tf model due to tflite issues with Flutter, hence a stable internet connection is required for the classification functionality.

### Application Demo
<a href="https://youtu.be/GPUsWFg0neU" target="_blank">
 <img src="https://github.com/Athindu/cropdoc-app/blob/master/thumbnail.png" alt="Watch the video" width="500" border="10" />
</a>

### Features
- Pathology Identification
- Diagnosis & Preventive Measures
- Discussion Platform
- CropDoc ChatBot
- Offline Pathology View
- Bilingual Support (English, Sinhala)
- Real-time Weather Update


### Used Technologies
- Flutter
- Firebase
- Dialogflow
- Figma



---

***Repository doesn't include the classification model file, contact me vie email if you need the full project.***



<br>

## Author
Athindu Umayanga : [@Athindu](https://github.com/Athindu)

Email : [@Athindu](mailto:athinduama@gmail.com)

