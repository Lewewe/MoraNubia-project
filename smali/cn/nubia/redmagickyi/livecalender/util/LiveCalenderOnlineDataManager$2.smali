.class Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;
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
        "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;",
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

    .line 189
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;)I
    .locals 7

    .line 193
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getBeginTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getBeginTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    .line 195
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getBeginTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getBeginTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v2, -0x1

    if-nez v0, :cond_2

    .line 196
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getEndTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getEndTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    return v1

    .line 198
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getEndTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getEndTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v2
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

    .line 189
    check-cast p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;

    check-cast p2, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;->compare(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;)I

    move-result p0

    return p0
.end method
