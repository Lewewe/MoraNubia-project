.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;
.super Ljava/lang/Object;
.source "DanceStudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoListLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

.field private videoListNetworkCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 572
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->videoListNetworkCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;)V
    .locals 0

    .line 572
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->unregistVideoListNetworkCallback()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;)V
    .locals 0

    .line 572
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->init()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;Z)V
    .locals 0

    .line 572
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->loadList(Z)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;)Ljava/util/List;
    .locals 0

    .line 572
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private cancel()V
    .locals 0

    const/4 p0, 0x1

    .line 589
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->cancelLoadList(Z)V

    return-void
.end method

.method private getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;",
            ">;"
        }
    .end annotation

    .line 593
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 0

    .line 575
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->registVideoListNetworkCallback()V

    return-void
.end method

.method private loadList(Z)V
    .locals 0

    .line 581
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->loadList(Landroid/content/Context;Z)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 583
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->dance_studio_no_more_content:I

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->toast(I)V

    :cond_0
    return-void
.end method

.method private registVideoListNetworkCallback()V
    .locals 1

    .line 597
    const-class v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity$VideoListLoader;->videoListNetworkCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;)V

    return-void
.end method

.method private unregistVideoListNetworkCallback()V
    .locals 0

    .line 601
    const-class p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->unregistCallback(Ljava/lang/Class;)V

    return-void
.end method
