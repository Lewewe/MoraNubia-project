.class public Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;
.super Ljava/lang/Object;
.source "LiveCalenderLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveActivity"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private begin_time:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private end_time:Ljava/lang/String;

.field final synthetic this$1:Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->this$1:Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->title:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->content:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->begin_time:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->end_time:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->address:Ljava/lang/String;

    return-object p0
.end method

.method public getBegin_time()Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->begin_time:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getEnd_time()Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->end_time:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->address:Ljava/lang/String;

    return-void
.end method

.method public setBegin_time(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->begin_time:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->content:Ljava/lang/String;

    return-void
.end method

.method public setEnd_time(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->end_time:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->title:Ljava/lang/String;

    return-void
.end method
