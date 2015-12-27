\name{tidyData}
\alias{tidyData}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{Data in the original data set underwent several transformations on its way to this data set. Variable names were expanded and cleanded. Specifically, several abbreviatons were expanded (i.e Acc to Acceleration) and gyroscope measurements were clarified as Angular Velocity. Further, the data was aggregated to the subject/activity level using an average function. As such, each row represents the average of each measure for the subject and activity. See details below for more information on the data set.
}
\format{
  A data frame with 180 observations on the following 68 variables.
  \describe{
    \item{\code{Subject}}{a numeric vector - the user whose data is being captured}
    \item{\samp{tBody-Acceleration-Mean-X}}{a numeric vector - the mean body acceleration in the X direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Mean-Y}}{a numeric vector - the mean body acceleration in the Y direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Mean-Z}}{a numeric vector - the mean body acceleration in the Z direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Standard_Dev-X}}{a numeric vector - the standard deviation of body acceleration in the X direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Standard_Dev-Y}}{a numeric vector - the standard deviation of body acceleration in the Y direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Standard_Dev-Z}}{A numeric vector - the standard deviation of body acceleration in the Z direction captured in standard gravity units (g) - time domain}
    \item{\samp{tGravity-Acceleration-Mean-X}}{a numeric vector - the mean gravitational component of acceleration in the X direction captured in standard gravity units (g) - time domain}
    \item{\samp{tGravity-Acceleration-Mean-Y}}{a numeric vector - the mean gravitational component of acceleration in the Y direction captured in standard gravity units (g) - time domain}
    \item{\samp{tGravity-Acceleration-Mean-Z}}{a numeric vector  - the mean gravitational component of acceleration in the Z direction captured in standard gravity units (g) - time domain}
    \item{\samp{tGravity-Acceleration-Standard_Dev-X}}{a numeric vector - the standard devation of the gravitational component of acceleration in the X direction captured in standard gravity units (g) - time domain}
    \item{\samp{tGravity-Acceleration-Standard_Dev-Y}}{a numeric vector - the standard devation of the gravitational component of acceleration in the Y direction captured in standard gravity units (g) - time domain}
    \item{\samp{tGravity-Acceleration-Standard_Dev-Z}}{a numeric vector - the standard devation of the gravitational component of acceleration in the Z direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Jerk-Mean-X}}{a numeric vector - the mean of jerk body acceleration in the X direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Jerk-Mean-Y}}{a numeric vector - the mean of jerk body acceleration in the Y direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Jerk-Mean-Z}}{a numeric vector - the mean of jerk body acceleration in the Z direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Jerk-Standard_Dev-X}}{a numeric vector - the standard deviation of jerk body acceleration in the X direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Jerk-Standard_Dev-Y}}{a numeric vector - the standard deviation of jerk body acceleration in the Y direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Jerk-Standard_Dev-Z}}{a numeric vector - the standard deviation of jerk body acceleration in the Z direction captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Angular_Velocity-Mean-X}}{a numeric vector - the mean body angular velocity in the X direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Mean-Y}}{a numeric vector - the mean body angular velocity in the Y direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Mean-Z}}{a numeric vector - the mean body angular velocity in the Z direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Standard_Dev-X}}{a numeric vector - the standard deviation body angular velocity in the X direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Standard_Dev-Y}}{a numeric vector - the standard deviation body angular velocity in the Y direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Standard_Dev-Z}}{a numeric vector - the standard deviation body angular velocity in the Z direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Jerk-Mean-X}}{a numeric vector - the mean jerk body angular velocity in the X direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Jerk-Mean-Y}}{a numeric vector - the mean jerk body angular velocity in the Y direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Jerk-Mean-Z}}{a numeric vector - the mean jerk body angular velocity in the Z direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Jerk-Standard_Dev-X}}{a numeric vector - the standard deviation of jerk angular velocity in the X direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Jerk-Standard_Dev-Y}}{a numeric vector - the standard deviation of jerk body angular velocity in the Y direction captured in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Jerk-Standard_Dev-Z}}{a numeric vector - the standard deviation of jerk body angular velocity in the Z direction captured in rad/seg (g) - time domain}
    \item{\samp{tBody-Acceleration-Magnitude-Mean}}{a numeric vector - the mean magnitude of body acceleration captured in standard gravity units (g) - time domain}
    \item{\samp{tBody-Acceleration-Magnitude-Standard_Dev}}{a numeric vector - the standard deviation of the magnitude of body acceleration captured in standard gravity untis (g) - time domain}
    \item{\samp{tGravity-Acceleration-Magnitude-Mean}}{a numeric vector - mean magnitude of gravity acceleration in standard gravity unit - time domain}
    \item{\samp{tGravity-Acceleration-Magnitude-Standard_Dev}}{a numeric vector - standard devation of the magnitude of gravity acceleration in standard gravity units - time domain }
    \item{\samp{tBody-Acceleration-Jerk-Magnitude-Mean}}{a numeric vector - mean magnitude of body jerk acceleration in standard gravity units - time domain }
    \item{\samp{tBody-Acceleration-Jerk-Magnitude-Standard_Dev}}{a numeric vector - standard devation of magnitude of body jerk acceleration in gravity units - time domain}
    \item{\samp{tBody-Angular_Velocity-Magnitude-Mean}}{a numeric vector - mean magnitude of body angular velocuty in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Magnitude-Standard_Dev}}{a numeric vector - standard deviation of magnitude of body angular velocity in rad/seg - time domain}
    \item{\samp{tBody-Angular_Velocity-Jerk-Magnitude-Mean}}{a numeric vector - mean magnitude of body jerk angular velocity in rad/seg - time domain }
    \item{\samp{tBody-Angular_Velocity-Jerk-Magnitude-Standard_Dev}}{a numeric vector - standard deviation of body jerk angular velocity in rad/seg - time domain}
    \item{\samp{fBody-Acceleration-Mean-X}}{a numeric vector - the mean body acceleration in the X direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Mean-Y}}{a numeric vector - the mean body acceleration in the Y direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Mean-Z}}{a numeric vector - the mean body acceleration in the Z direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Standard_Dev-X}}{a numeric vector - the standard deviation of body acceleration in the X direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Standard_Dev-Y}}{a numeric vector - the standard deviation of body acceleration in the Y direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Standard_Dev-Z}}{a numeric vector - the standard deviation of body acceleration in the Z direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Jerk-Mean-X}}{a numeric vector - the mean body jerk acceleration in the X direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Jerk-Mean-Y}}{a numeric vector - the mean body jerk acceleration in the Y direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Jerk-Mean-Z}}{a numeric vector - the mean body jerk acceleration in the Z direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Jerk-Standard_Dev-X}}{a numeric vector - the standard deviation of body jerk acceleration in the X direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Jerk-Standard_Dev-Y}}{a numeric vector - the standard deviation of body jerk acceleration in the Y direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Acceleration-Jerk-Standard_Dev-Z}}{a numeric vector - the standard deviation of body jerk acceleration in the Z direction captured in standard gravity units (g) - frequency domain}
    \item{\samp{fBody-Angular_Velocity-Mean-X}}{a numeric vector - the mean body angular velocity in the X direction captured in rad/seg - frequency domain}
    \item{\samp{fBody-Angular_Velocity-Mean-Y}}{a numeric vector - the mean body angular velocity in the Y direction captured in rad/seg - frequency domain}
    \item{\samp{fBody-Angular_Velocity-Mean-Z}}{a numeric vector - the mean body angular velocity in the Z direction captured in rad/seg - frequency domain}
    \item{\samp{fBody-Angular_Velocity-Standard_Dev-X}}{a numeric vector - the standard deviation ofbody angular velocity in the X direction captured in rad/seg - frequency domain}
    \item{\samp{fBody-Angular_Velocity-Standard_Dev-Y}}{a numeric vector - the standard deviation of body angular velocity in the Y direction captured in rad/seg - frequency domain}
    \item{\samp{fBody-Angular_Velocity-Standard_Dev-Z}}{a numeric vector - the standard deviation of body angular velocity in the Z direction captured in rad/seg - frequency domain}
    \item{\samp{fBody-Acceleration-Magnitude-Mean}}{a numeric vector - mean magnitude of body acceleration captured in standard gravity units - frequency domain}
    \item{\samp{fBody-Acceleration-Magnitude-Standard_Dev}}{a numeric vector - standard deviation of body acceleration magnitude in standard gravity units - frequency domain}
    \item{\samp{fBodyBody-Acceleration-Jerk-Magnitude-Mean}}{a numeric vector - mean magnitude of body jerk acceleration in gravity units - frequency domain}
    \item{\samp{fBodyBody-Acceleration-Jerk-Magnitude-Standard_Dev}}{a numeric vector - standard deviation of body jerk magnitude in gravity units - frequency domain}
    \item{\samp{fBodyBody-Angular_Velocity-Magnitude-Mean}}{a numeric vector - mean magnitude of body angular velocity in rad/seg - frequency domain }
    \item{\samp{fBodyBody-Angular_Velocity-Magnitude-Standard_Dev}}{a numeric vector - standard deviation of body angular velocity magnitude in rad/seg - frequency domain}
    \item{\samp{fBodyBody-Angular_Velocity-Jerk-Magnitude-Mean}}{a numeric vector - mean magnitude of body jerk angular velocity in rad/seg - frequency domain}
    \item{\samp{fBodyBody-Angular_Velocity-Jerk-Magnitude-Standard_Dev}}{a numeric vector - standard deviation of body jerk angulary velocity in rad/seg - frequency domain}
    \item{\code{Activity}}{a factor with levels \code{LAYING} \code{SITTING} \code{STANDING} \code{WALKING} \code{WALKING_DOWNSTAIRS} \code{WALKING_UPSTAIRS} These signify what the person was doing when the data was captured}
  }
}
\details{
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.  
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing variables with beginning with f. (Note the 'f' to indicate frequency domain signals).

}
\source{
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\keyword{datasets}
