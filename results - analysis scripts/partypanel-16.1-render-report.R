########################################################################
### Settings for this wave
########################################################################
waveNumber <- "16.1";
surveyId <- 321858;
startDate <- '2016-07-01';
categoricalQuestions <- c('informedConsent', 'gender', 'hasJob',
                          'currentEducation', 'prevEducation', 'country');
behaviors <- c('faFriend', 'faSelfLight', 'faSelfAlc', 'faSelfSubst');

options(ufs.debug = FALSE);

########################################################################
### Derivations and packages
########################################################################
require('here');
require('rmarkdown');

if (!exists('rootPath') || is.null(rootPath)) {
  basePath <- here::here();
  rootPath <- file.path(basePath, "..");
} else {
  #rootPath <- "B:/Data/research/party panel";
  basePath <- file.path(rootPath, paste0("partypanel-", waveNumber));
}
sharedPath <- file.path(rootPath, "partypanel-shared");
outputPath <- file.path(basePath, 'results - reports');
scriptPath <- file.path(basePath, 'results - analysis scripts');

loginStringFilePath <- file.path(sharedPath, 'report-upload-login-string.txt')

########################################################################
### Rendering command
########################################################################

render(input=file.path(sharedPath, 'party-panel-report.Rmd'),
       output_file=file.path(outputPath, paste('party panel',
                                               waveNumber,
                                               'report.html')),
       params=list(waveNumber=waveNumber,
                   basePath=basePath,
                   surveyId=surveyId,
                   startDate=startDate,
                   behaviors=behaviors,
                   categoricalQuestions=categoricalQuestions),
       encoding="UTF-8");

### Save dataframe for potential later use.
assign(paste0("dat.pp", waveNumber), dat);
if (exists('ppDataframes')) {
  ppDataframes[length(ppDataframes) + 1] <- paste0("dat.pp", waveNumber);
}

### Save recruitment information for potential later use.
assign(paste0("ppRecrInfo.", waveNumber), recruitmentInfo);
if (exists('ppRecrInfo')) {
  ppRecrInfo[length(ppRecrInfo) + 1] <- paste0("ppRecrInfo.", waveNumber);
}

########################################################################
### Uploading report
########################################################################

uploadPassword <- readLines(loginStringFilePath);

if (require('RCurl')) {
  if (url.exists('partypanel.nl')) {
    ftpUpload(file.path(rootPath,
                        paste0("partypanel-", waveNumber),
                        "results - reports",
                        paste0("party panel ", waveNumber, " report.html")),
              paste0("ftp://partypanel.nl/", waveNumber, "/index.html"),
              userpwd=uploadPassword)
    cat("Uploaded report for wave ", waveNumber, " using FTP.\n", sep="");
  }
}