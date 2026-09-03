.class public Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "AchievementReceiveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

.field private controller:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;

.field private oldTask:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 19
    const-string v0, "AchievementReceiveManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->oldTask:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    .line 26
    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->oldTask:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->callback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->isCanceled:Z

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->controller:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;->cancel()V

    :cond_0
    return-void
.end method

.method public load()V
    .locals 3

    .line 31
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 32
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;)V

    .line 77
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->oldTask:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getUserAchievementId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$1;->receive(Ljava/lang/String;I)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager;->controller:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementReceiveController;

    return-void
.end method
