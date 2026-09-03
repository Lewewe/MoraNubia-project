.class public Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;
.super Ljava/lang/Object;
.source "LiveCalenderLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->code:I

    .line 12
    iput-object p2, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->message:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->code:I

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->data:Ljava/util/List;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->message:Ljava/lang/String;

    return-void
.end method
