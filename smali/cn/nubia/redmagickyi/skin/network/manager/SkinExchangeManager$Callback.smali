.class public interface abstract Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;
.super Ljava/lang/Object;
.source "SkinExchangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
.end method
