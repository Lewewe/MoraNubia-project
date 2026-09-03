.class Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;
.super Ljava/lang/Object;
.source "AchievementGetPointManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointGetter"
.end annotation


# instance fields
.field private controller:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;

.field private loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->getPoint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;I)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->isLoginTokenExpired(I)Z

    move-result p0

    return p0
.end method

.method private getPoint(Ljava/lang/String;)V
    .locals 1

    .line 78
    new-instance v0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$1;->getPoint(Ljava/lang/String;)Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->controller:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;

    return-void
.end method

.method private isLoginTokenExpired(I)Z
    .locals 3

    const/16 v0, 0xfa3

    const/16 v1, 0x1771

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 123
    :cond_1
    :goto_0
    const-string v0, "AchievementReceiveManager"

    const-string v2, "perform updateLoginToken onSuccess"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_2

    .line 124
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result p1

    if-nez p1, :cond_2

    .line 125
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetworkUtils;->onAccountExpired()V

    .line 126
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    new-instance p1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/16 v0, 0x1006

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$800(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 128
    :cond_2
    new-instance p1, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter$2;-><init>(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;)V

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateLoginToken(Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;)Lcn/nubia/redmagickyi/network/manager/LoginManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$1500(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 162
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->this$0:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;->access$1502(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager;Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;

    .line 164
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->cancel()V

    .line 166
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    .line 168
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->controller:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;->cancel()V

    .line 170
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$PointGetter;->controller:Lcn/nubia/redmagickyi/achievement/network/controller/BaseAchievementGetPointController;

    :cond_2
    return-void
.end method
