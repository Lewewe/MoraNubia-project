.class public interface abstract Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;
.super Ljava/lang/Object;
.source "SkinNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onExchangeError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onExchangeSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
.end method

.method public abstract onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onLoadSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;Z)V
.end method
