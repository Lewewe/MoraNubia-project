.class public interface abstract Lcom/zte/aivoice/asr/OnASRClientListener;
.super Ljava/lang/Object;
.source "OnASRClientListener.java"


# virtual methods
.method public abstract onRecognizeBegin()V
.end method

.method public abstract onRecognizeCompleted(Ljava/lang/String;Z)V
.end method

.method public abstract onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
.end method

.method public abstract onRecordingCompleted(Ljava/lang/String;)V
.end method

.method public abstract onRecordingVolumeUpdated(III)V
.end method
