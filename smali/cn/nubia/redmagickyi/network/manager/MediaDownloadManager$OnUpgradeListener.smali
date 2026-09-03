.class public interface abstract Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager$OnUpgradeListener;
.super Ljava/lang/Object;
.source "MediaDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/manager/MediaDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUpgradeListener"
.end annotation


# virtual methods
.method public abstract onDownloadFailed()V
.end method

.method public abstract onDownloadSuccess(Ljava/io/File;)V
.end method

.method public abstract onDownloading(JJI)V
.end method
