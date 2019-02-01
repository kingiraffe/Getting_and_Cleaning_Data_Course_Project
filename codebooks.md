## 1. Raw data  
subject_train/subject_test: who performed the activity, from 1 to 30 >> trainSubjects/testSubjects  

X_train/X_test: dataset of train.test, 561 features  
X_train: 7352rows, 561cols >> trainSet  
X_test: 2947ros, 561cols >> testSet  

y_train/y_test: Labels, from 1 to 6 >> trainLabels/testLabels  
y_train: 7352rows, 1cols  
y_test: 2947rows, 1cols  

features: 561 variables, correspond to 561cols in X_train & X_test  

activity_labels: 6rows, 2cols, correspond to Labels in y_train & y_test, 1st col is "activityId", 2nd col is "activityLabel"  

## 2. Abbreviation  
"f" >> "frequencyDomain"  
"t" >> "timeDomain"  
"Acc" >> "Accelerometer"  
"Gyro" >> "Gyroscope"  
"Mag" >> "Magnitude"  
"Freq" >> "Frequency"  
"mean" >> "Mean"  
"std" >> "StandardDeviation"  

## 3. Variables extracted and modified  
79 variables averaged
"timeDomainBodyAccelerometerMeanX"                                
"timeDomainBodyAccelerometerMeanY"                                
"timeDomainBodyAccelerometerMeanZ"                                
"timeDomainBodyAccelerometerStandardDeviationX"                   
"timeDomainBodyAccelerometerStandardDeviationY"                   
"timeDomainBodyAccelerometerStandardDeviationZ"                   
"timeDomainGravityAccelerometerMeanX"                             
"timeDomainGravityAccelerometerMeanY"                             
"timeDomainGravityAccelerometerMeanZ"                             
"timeDomainGravityAccelerometerStandardDeviationX"                
"timeDomainGravityAccelerometerStandardDeviationY"                
"timeDomainGravityAccelerometerStandardDeviationZ"                
"timeDomainBodyAccelerometerJerkMeanX"                            
"timeDomainBodyAccelerometerJerkMeanY"                            
"timeDomainBodyAccelerometerJerkMeanZ"                            
"timeDomainBodyAccelerometerJerkStandardDeviationX"               
"timeDomainBodyAccelerometerJerkStandardDeviationY"               
"timeDomainBodyAccelerometerJerkStandardDeviationZ"               
"timeDomainBodyGyroscopeMeanX"                                      
"timeDomainBodyGyroscopeMeanY"                                    
"timeDomainBodyGyroscopeMeanZ"                                    
"timeDomainBodyGyroscopeStandardDeviationX"                       
"timeDomainBodyGyroscopeStandardDeviationY"                       
"timeDomainBodyGyroscopeStandardDeviationZ"                       
"timeDomainBodyGyroscopeJerkMeanX"                                
"timeDomainBodyGyroscopeJerkMeanY"                                
"timeDomainBodyGyroscopeJerkMeanZ"                                
"timeDomainBodyGyroscopeJerkStandardDeviationX"                   
"timeDomainBodyGyroscopeJerkStandardDeviationY"                   
"timeDomainBodyGyroscopeJerkStandardDeviationZ"                   
"timeDomainBodyAccelerometerMagnitudeMean"                        
"timeDomainBodyAccelerometerMagnitudeStandardDeviation"           
"timeDomainGravityAccelerometerMagnitudeMean"                     
"timeDomainGravityAccelerometerMagnitudeStandardDeviation"        
"timeDomainBodyAccelerometerJerkMagnitudeMean"                    
"timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"       
"timeDomainBodyGyroscopeMagnitudeMean"                            
"timeDomainBodyGyroscopeMagnitudeStandardDeviation"               
"timeDomainBodyGyroscopeJerkMagnitudeMean"                        
"timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"           
"frequencyDomainBodyAccelerometerMeanX"                           
"frequencyDomainBodyAccelerometerMeanY"                           
"frequencyDomainBodyAccelerometerMeanZ"                           
"frequencyDomainBodyAccelerometerStandardDeviationX"              
"frequencyDomainBodyAccelerometerStandardDeviationY"              
"frequencyDomainBodyAccelerometerStandardDeviationZ"              
"frequencyDomainBodyAccelerometerMeanFrequencyX"                  
"frequencyDomainBodyAccelerometerMeanFrequencyY"                  
"frequencyDomainBodyAccelerometerMeanFrequencyZ"                  
"frequencyDomainBodyAccelerometerJerkMeanX"                       
"frequencyDomainBodyAccelerometerJerkMeanY"                       
"frequencyDomainBodyAccelerometerJerkMeanZ"                       
"frequencyDomainBodyAccelerometerJerkStandardDeviationX"          
"frequencyDomainBodyAccelerometerJerkStandardDeviationY"          
"frequencyDomainBodyAccelerometerJerkStandardDeviationZ"         
"frequencyDomainBodyAccelerometerJerkMeanFrequencyX"              
"frequencyDomainBodyAccelerometerJerkMeanFrequencyY"              
"frequencyDomainBodyAccelerometerJerkMeanFrequencyZ"              
"frequencyDomainBodyGyroscopeMeanX"                               
"frequencyDomainBodyGyroscopeMeanY"                               
"frequencyDomainBodyGyroscopeMeanZ"                               
"frequencyDomainBodyGyroscopeStandardDeviationX"                  
"frequencyDomainBodyGyroscopeStandardDeviationY"                  
"frequencyDomainBodyGyroscopeStandardDeviationZ"                  
"frequencyDomainBodyGyroscopeMeanFrequencyX"                      
"frequencyDomainBodyGyroscopeMeanFrequencyY"                      
"frequencyDomainBodyGyroscopeMeanFrequencyZ"                      
"frequencyDomainBodyAccelerometerMagnitudeMean"                   
"frequencyDomainBodyAccelerometerMagnitudeStandardDeviation"      
"frequencyDomainBodyAccelerometerMagnitudeMeanFrequency"          
"frequencyDomainBodyAccelerometerJerkMagnitudeMean"               
"frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation"  
"frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency"      
"frequencyDomainBodyGyroscopeMagnitudeMean"                       
"frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"          
"frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"              
"frequencyDomainBodyGyroscopeJerkMagnitudeMean"                   
"frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"      
"frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency  

## 4. Changes to variables  
see information in README.md or in run_analysis.R  
