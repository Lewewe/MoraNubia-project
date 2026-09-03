.class public interface abstract Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;
.super Ljava/lang/Object;
.source "VideoListNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onBackPressed()V
.end method

.method public abstract onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onLoadSuccess(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;Z)V
.end method
