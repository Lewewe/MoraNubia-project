.class public interface abstract Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;
.super Ljava/lang/Object;
.source "SkinLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;)V
.end method
