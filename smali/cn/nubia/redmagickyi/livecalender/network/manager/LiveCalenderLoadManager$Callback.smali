.class public interface abstract Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;
.super Ljava/lang/Object;
.source "LiveCalenderLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V
.end method
