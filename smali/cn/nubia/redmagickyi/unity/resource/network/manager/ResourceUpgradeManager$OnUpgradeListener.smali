.class public interface abstract Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;
.super Ljava/lang/Object;
.source "ResourceUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;
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

.method public abstract onDownloading(I)V
.end method

.method public abstract onUnzipFailed()V
.end method

.method public abstract onUnzipSuccess(Ljava/lang/String;)V
.end method
