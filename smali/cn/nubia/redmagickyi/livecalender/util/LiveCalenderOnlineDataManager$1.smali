.class Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$1;
.super Ljava/lang/Object;
.source "LiveCalenderOnlineDataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->parseLiveCalendersResponse(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;)I
    .locals 7

    .line 118
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getDs()I

    move-result v0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getDs()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getDs()I

    move-result v0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getDs()I

    move-result v1

    const/4 v3, -0x1

    if-ne v0, v1, :cond_4

    .line 121
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getIs_offline()I

    move-result v0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getIs_offline()I

    move-result v1

    if-le v0, v1, :cond_1

    return v2

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getIs_offline()I

    move-result v0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getIs_offline()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->getBegin_time()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide v0

    .line 126
    iget-object v5, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->getBegin_time()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    return v2

    :cond_2
    if-nez v0, :cond_4

    .line 130
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->getBegin_time()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide v0

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->getBegin_time()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_3

    return v2

    :cond_3
    if-nez p0, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 114
    check-cast p1, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;

    check-cast p2, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$1;->compare(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;)I

    move-result p0

    return p0
.end method
