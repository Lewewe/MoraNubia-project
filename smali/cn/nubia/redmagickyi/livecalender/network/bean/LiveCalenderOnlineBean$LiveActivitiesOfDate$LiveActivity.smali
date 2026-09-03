.class public Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;
.super Ljava/lang/Object;
.source "LiveCalenderOnlineBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveActivity"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private beginTime:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private id:I

.field final synthetic this$1:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->this$1:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 271
    :cond_1
    iget v2, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->title:Ljava/lang/String;

    iget-object v3, p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->content:Ljava/lang/String;

    iget-object v3, p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->content:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->beginTime:Ljava/lang/String;

    iget-object v3, p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->beginTime:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->endTime:Ljava/lang/String;

    iget-object v3, p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->endTime:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->address:Ljava/lang/String;

    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->address:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 245
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->address:Ljava/lang/String;

    return-object p0
.end method

.method public getBeginTime()Ljava/lang/String;
    .locals 0

    .line 229
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->beginTime:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->endTime:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 205
    iget p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->id:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->address:Ljava/lang/String;

    return-void
.end method

.method public setBeginTime(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->beginTime:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->content:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LiveActivity{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', beginTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->beginTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', endTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', address=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->address:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
