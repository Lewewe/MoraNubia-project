.class public interface abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$OnDownloadCallback;
.super Ljava/lang/Object;
.source "DownloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadCallback"
.end annotation


# virtual methods
.method public abstract onDownloadCancel()V
.end method

.method public abstract onDownloadSuccess(Ljava/io/File;)V
.end method

.method public abstract shouldShowRemindDownloadDialog(Ljava/lang/String;JLcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)Z
.end method
