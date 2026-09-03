.class public Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;
.super Ljava/lang/Object;
.source "AchievementOnlineBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private achievementBackgroundCompletePath:Ljava/lang/String;

.field private achievementBackgroundUndonePath:Ljava/lang/String;

.field private achievementCompletedDetail:Ljava/lang/String;

.field private achievementIconCompletePath:Ljava/lang/String;

.field private achievementIconCompleteUrl:Ljava/lang/String;

.field private achievementIconUndonePath:Ljava/lang/String;

.field private achievementIconUndoneUrl:Ljava/lang/String;

.field private achievementId:I

.field private achievementLevel:I

.field private achievementName:Ljava/lang/String;

.field private achievementPoint:I

.field private achievementTaskId:I

.field private achievementType:I

.field private achievementUndoneDetail:Ljava/lang/String;

.field private backgroundCompleteUrl:Ljava/lang/String;

.field private completeColor:Ljava/lang/String;

.field private createTime:J

.field private progressMax:I

.field private progressNow:I

.field private receiveState:I

.field private receiveTime:J

.field private sortIndex:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

.field private undoneColor:Ljava/lang/String;

.field private userAchievementId:I


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->this$0:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;
    .locals 0

    .line 297
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->clone()Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    move-result-object p0

    return-object p0
.end method

.method public getAchievementBackgroundCompletePath()Ljava/lang/String;
    .locals 0

    .line 175
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementBackgroundCompletePath:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievementBackgroundUndonePath()Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementBackgroundUndonePath:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievementCompletedDetail()Ljava/lang/String;
    .locals 0

    .line 238
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementCompletedDetail:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievementIconCompletePath()Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementIconCompletePath:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievementIconCompleteUrl()Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementIconCompleteUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievementIconUndonePath()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementIconUndonePath:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievementIconUndoneUrl()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementIconUndoneUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievementId()I
    .locals 0

    .line 90
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementId:I

    return p0
.end method

.method public getAchievementLevel()I
    .locals 5

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->this$0:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->access$000(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 210
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getSortIndex()I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->sortIndex:I

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-le v2, v0, :cond_2

    .line 214
    iget v1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementLevel:I

    :cond_2
    return v1
.end method

.method public getAchievementName()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementName:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievementPoint()I
    .locals 0

    .line 270
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementPoint:I

    return p0
.end method

.method public getAchievementTaskId()I
    .locals 0

    .line 114
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementTaskId:I

    return p0
.end method

.method public getAchievementType()I
    .locals 0

    .line 222
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementType:I

    return p0
.end method

.method public getAchievementUndoneDetail()Ljava/lang/String;
    .locals 0

    .line 230
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementUndoneDetail:Ljava/lang/String;

    return-object p0
.end method

.method public getBackgroundCompleteUrl()Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->backgroundCompleteUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getCompleteColor()Ljava/lang/String;
    .locals 0

    .line 196
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->completeColor:Ljava/lang/String;

    return-object p0
.end method

.method public getCreateTime()J
    .locals 2

    .line 262
    iget-wide v0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->createTime:J

    return-wide v0
.end method

.method public getProgressMax()I
    .locals 0

    .line 278
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->progressMax:I

    return p0
.end method

.method public getProgressNow()I
    .locals 0

    .line 286
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->progressNow:I

    return p0
.end method

.method public getReceiveState()I
    .locals 0

    .line 246
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->receiveState:I

    return p0
.end method

.method public getReceiveTime()J
    .locals 2

    .line 254
    iget-wide v0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->receiveTime:J

    return-wide v0
.end method

.method public getSortIndex()I
    .locals 0

    .line 98
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->sortIndex:I

    return p0
.end method

.method public getUndoneColor()Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->undoneColor:Ljava/lang/String;

    return-object p0
.end method

.method public getUserAchievementId()I
    .locals 0

    .line 82
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->userAchievementId:I

    return p0
.end method

.method public setAchievementBackgroundCompletePath(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementBackgroundCompletePath:Ljava/lang/String;

    return-void
.end method

.method public setAchievementBackgroundUndonePath(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementBackgroundUndonePath:Ljava/lang/String;

    return-void
.end method

.method public setAchievementCompletedDetail(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementCompletedDetail:Ljava/lang/String;

    return-void
.end method

.method public setAchievementIconCompletePath(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementIconCompletePath:Ljava/lang/String;

    return-void
.end method

.method public setAchievementIconCompleteUrl(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementIconCompleteUrl:Ljava/lang/String;

    return-void
.end method

.method public setAchievementIconUndonePath(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementIconUndonePath:Ljava/lang/String;

    return-void
.end method

.method public setAchievementIconUndoneUrl(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementIconUndoneUrl:Ljava/lang/String;

    return-void
.end method

.method public setAchievementId(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementId:I

    return-void
.end method

.method public setAchievementLevel(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementLevel:I

    return-void
.end method

.method public setAchievementName(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementName:Ljava/lang/String;

    return-void
.end method

.method public setAchievementPoint(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementPoint:I

    return-void
.end method

.method public setAchievementTaskId(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementTaskId:I

    return-void
.end method

.method public setAchievementType(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementType:I

    return-void
.end method

.method public setAchievementUndoneDetail(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->achievementUndoneDetail:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundCompleteUrl(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->backgroundCompleteUrl:Ljava/lang/String;

    return-void
.end method

.method public setCompleteColor(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 200
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->completeColor:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 266
    iput-wide p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->createTime:J

    return-void
.end method

.method public setProgressMax(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->progressMax:I

    return-void
.end method

.method public setProgressNow(I)V
    .locals 0

    .line 290
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->progressNow:I

    return-void
.end method

.method public setReceiveState(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->receiveState:I

    return-void
.end method

.method public setReceiveTime(J)V
    .locals 0

    .line 258
    iput-wide p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->receiveTime:J

    return-void
.end method

.method public setSortIndex(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->sortIndex:I

    return-void
.end method

.method public setUndoneColor(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 188
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->undoneColor:Ljava/lang/String;

    return-void
.end method

.method public setUserAchievementId(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->userAchievementId:I

    return-void
.end method
