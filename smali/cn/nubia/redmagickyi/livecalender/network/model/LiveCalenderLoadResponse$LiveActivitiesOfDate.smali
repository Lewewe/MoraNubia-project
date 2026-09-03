.class public Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;
.super Ljava/lang/Object;
.source "LiveCalenderLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveActivitiesOfDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;
    }
.end annotation


# instance fields
.field private bg_image:Ljava/lang/String;

.field private ds:I

.field private id:I

.field private is_offline:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;",
            ">;"
        }
    .end annotation
.end field

.field private profile_image:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;IILjava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->this$0:Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->id:I

    .line 51
    iput p3, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->ds:I

    .line 52
    iput-object p4, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->bg_image:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->profile_image:Ljava/lang/String;

    .line 54
    iput p6, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->is_offline:I

    .line 55
    iput-object p7, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBg_image()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->bg_image:Ljava/lang/String;

    return-object p0
.end method

.method public getDs()I
    .locals 0

    .line 67
    iget p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->ds:I

    return p0
.end method

.method public getId()I
    .locals 0

    .line 59
    iget p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->id:I

    return p0
.end method

.method public getIs_offline()I
    .locals 0

    .line 91
    iget p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->is_offline:I

    return p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->list:Ljava/util/List;

    return-object p0
.end method

.method public getProfile_image()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->profile_image:Ljava/lang/String;

    return-object p0
.end method

.method public setBg_image(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->bg_image:Ljava/lang/String;

    return-void
.end method

.method public setDs(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->ds:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->id:I

    return-void
.end method

.method public setIs_offline(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->is_offline:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->list:Ljava/util/List;

    return-void
.end method

.method public setProfile_image(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->profile_image:Ljava/lang/String;

    return-void
.end method
