.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;
.super Ljava/lang/Object;
.source "DanceStudioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoListLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

.field private videoListNetworkCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->videoListNetworkCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->unregistVideoListNetworkCallback()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;)Ljava/util/List;
    .locals 0

    .line 236
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->registVideoListNetworkCallback()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;Z)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->loadList(Z)V

    return-void
.end method

.method private cancel()V
    .locals 0

    const/4 p0, 0x1

    .line 251
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

    .line 247
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private loadList(Z)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->loadList(Landroid/content/Context;Z)Z

    return-void
.end method

.method private registVideoListNetworkCallback()V
    .locals 1

    .line 255
    const-class v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$VideoListLoader;->videoListNetworkCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;)V

    return-void
.end method

.method private unregistVideoListNetworkCallback()V
    .locals 0

    .line 259
    const-class p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->unregistCallback(Ljava/lang/Class;)V

    return-void
.end method
