.class public interface abstract Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$Callback;
.super Ljava/lang/Object;
.source "LiveCalenderNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method public abstract onLoadSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;Z)V
.end method
