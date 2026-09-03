.class public interface abstract Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$Callback;
.super Ljava/lang/Object;
.source "VideoListNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onLoadSuccess(Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;)V
.end method
