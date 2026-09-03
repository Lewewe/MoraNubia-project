.class public abstract Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseLiveCalenderLoadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private beginTime:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private maxRetryCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->endTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->beginTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;)Ljava/lang/Integer;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->maxRetryCount:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;
    .locals 2

    .line 25
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController$Task;-><init>(Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController$1;)V

    .line 27
    const-class v1, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->load()Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;

    move-result-object p0

    return-object p0
.end method

.method public setMaxRetryCount(I)Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;
    .locals 0

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->maxRetryCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTime(Ljava/util/Date;Ljava/util/Date;)Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;
    .locals 2

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->beginTime:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/controller/BaseLiveCalenderLoadController;->endTime:Ljava/lang/String;

    return-object p0
.end method
