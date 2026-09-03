package cn.nubia.upgrade.service;

interface DownloadBinderProxy{

void onStartDownload();
void onResumeDownload();

void onDownloadError(in int errorCode);

void onDownloadPause();

void onDownloadComplete(in String downloadPath,in boolean exist);
void onDownloadProgress(in int progress);

int onDownloadCallingPid();
}