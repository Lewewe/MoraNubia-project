.class public interface abstract Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;
.super Ljava/lang/Object;
.source "VideoListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onSuccess(Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;)V
.end method
