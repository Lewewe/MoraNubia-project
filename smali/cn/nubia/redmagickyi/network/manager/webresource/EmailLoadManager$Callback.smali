.class public interface abstract Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;
.super Ljava/lang/Object;
.source "EmailLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onSuccess(Lcn/nubia/redmagickyi/network/model/EmailResponse;)V
.end method
