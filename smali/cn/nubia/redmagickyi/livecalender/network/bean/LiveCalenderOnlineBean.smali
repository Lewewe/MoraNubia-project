.class public Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;
.super Ljava/lang/Object;
.source "LiveCalenderOnlineBean.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;
    }
.end annotation


# instance fields
.field private transient queryBeginTime:Ljava/util/Date;

.field private transient queryEndTime:Ljava/util/Date;

.field private transient queryNowTime:Ljava/util/Date;

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->tasks:Ljava/util/List;

    return-void
.end method

.method public static equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 366
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equalsNonable(Ljava/util/List;Ljava/util/List;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 337
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v2, v1

    .line 340
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 341
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 342
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 343
    instance-of v5, v3, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    if-eqz v5, :cond_4

    .line 344
    check-cast v3, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    check-cast v4, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->equals(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    .line 347
    :cond_4
    instance-of v5, v3, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;

    if-eqz v5, :cond_5

    .line 348
    check-cast v3, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;

    check-cast v4, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->equals(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    .line 352
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return v0
.end method


# virtual methods
.method public equals(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 324
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 327
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->tasks:Ljava/util/List;

    invoke-static {p0, p0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLiveActivities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->tasks:Ljava/util/List;

    return-object p0
.end method

.method public getQueryBeginTime()Ljava/util/Date;
    .locals 0

    .line 285
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->queryBeginTime:Ljava/util/Date;

    return-object p0
.end method

.method public getQueryEndTime()Ljava/util/Date;
    .locals 0

    .line 293
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->queryEndTime:Ljava/util/Date;

    return-object p0
.end method

.method public getQueryNowTime()Ljava/util/Date;
    .locals 0

    .line 277
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->queryNowTime:Ljava/util/Date;

    return-object p0
.end method

.method public setLiveActivities(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 306
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->tasks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setQueryBeginTime(Ljava/util/Date;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->queryBeginTime:Ljava/util/Date;

    return-void
.end method

.method public setQueryEndTime(Ljava/util/Date;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->queryEndTime:Ljava/util/Date;

    return-void
.end method

.method public setQueryNowTime(Ljava/util/Date;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->queryNowTime:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LiveCalenderOnlineBean{queryBeginTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->queryBeginTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", queryEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->queryEndTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->tasks:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
