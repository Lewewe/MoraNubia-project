.class public interface abstract Lcom/zte/wakeup/training/TrainingManager$Callback;
.super Ljava/lang/Object;
.source "TrainingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/wakeup/training/TrainingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onInitResult(Z)V
.end method

.method public abstract onRecordItemFinish(Ljava/lang/Integer;Z)V
.end method

.method public abstract onRecordItemVerifyFailed(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
.end method

.method public abstract onRecordItemVerifySuccess(Ljava/lang/Integer;)V
.end method

.method public abstract onStartRecordingFailed()V
.end method

.method public abstract onStartRecordingSuccess()V
.end method

.method public abstract onTrainFailed(ILjava/lang/String;)V
.end method

.method public abstract onTrainSuccess()V
.end method

.method public abstract volumeUpdate(D)V
.end method
