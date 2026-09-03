.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;
.super Ljava/lang/Object;
.source "DanceStudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoListLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

.field private videoListNetworkCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;

.field private videoListOnlineDataManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->videoListOnlineDataManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    .line 215
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->videoListNetworkCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->init()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->cancel()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->unregistVideoListNetworkCallback()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;)Ljava/util/List;
    .locals 0

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;Z)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->loadList(Z)V

    return-void
.end method

.method private cancel()V
    .locals 0

    const/4 p0, 0x1

    .line 204
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

    .line 200
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->onLoading()V

    .line 189
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->unregistVideoListNetworkCallback()V

    .line 190
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->registVideoListNetworkCallback()V

    .line 191
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->videoListOnlineDataManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->clear()V

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->loadList(Z)V

    return-void
.end method

.method private loadList(Z)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->loadList(Landroid/content/Context;Z)Z

    return-void
.end method

.method private registVideoListNetworkCallback()V
    .locals 1

    .line 208
    const-class v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->videoListNetworkCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;)V

    return-void
.end method

.method private unregistVideoListNetworkCallback()V
    .locals 0

    .line 212
    const-class p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->unregistCallback(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getVideoListOnlineDataManager()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;
    .locals 0

    .line 184
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/fragment/DanceStudioFragment$VideoListLoader;->videoListOnlineDataManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    return-object p0
.end method
