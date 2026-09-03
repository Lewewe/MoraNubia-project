.class public Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;
.super Ljava/lang/Object;
.source "AchievementOnlineBean.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;,
        Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$HonorStatus;,
        Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Type;
    }
.end annotation


# static fields
.field public static final HONOR_CANNOT_RECEIVE:I = -0x1

.field public static final HONOR_CAN_RECEIVE:I = 0x0

.field public static final HONOR_DONE_RECEIVE:I = 0x1

.field public static final TYPE_FRIENDSHIP:I = 0x2

.field public static final TYPE_HIDDEN:I = 0x1

.field public static final TYPE_LOGIN:I = 0x3


# instance fields
.field private tasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;",
            ">;"
        }
    .end annotation
.end field

.field private totalPoint:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->tasks:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;)Ljava/util/Vector;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->tasks:Ljava/util/Vector;

    return-object p0
.end method


# virtual methods
.method public clone()Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;
    .locals 1

    .line 328
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    .line 329
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->tasks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->setAchievements(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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

    .line 13
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->clone()Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;

    move-result-object p0

    return-object p0
.end method

.method public getAchievements()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->tasks:Ljava/util/Vector;

    return-object p0
.end method

.method public getTotalPoint()I
    .locals 0

    .line 306
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->totalPoint:I

    return p0
.end method

.method public setAchievements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;",
            ">;)V"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->tasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    if-eqz p1, :cond_0

    .line 319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 320
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->tasks:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setTotalPoint(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean;->totalPoint:I

    return-void
.end method
