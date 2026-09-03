.class public Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;
.super Ljava/lang/Object;
.source "AchievementLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;",
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
            "Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->code:I

    .line 14
    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->message:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 19
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->code:I

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->data:Ljava/util/List;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;->message:Ljava/lang/String;

    return-void
.end method
