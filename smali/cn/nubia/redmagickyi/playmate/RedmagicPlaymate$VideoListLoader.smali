.class Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;
.super Ljava/lang/Object;
.source "RedmagicPlaymate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoListLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

.field private videoListNetworkCallback:Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$Callback;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    new-instance p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader$1;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->videoListNetworkCallback:Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$1;)V
    .locals 0

    .line 432
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;-><init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)Ljava/util/List;
    .locals 0

    .line 432
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->getVideos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;I)Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;
    .locals 0

    .line 432
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->getVideo(I)Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)V
    .locals 0

    .line 432
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->init()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)V
    .locals 0

    .line 432
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->cancel()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;)V
    .locals 0

    .line 432
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->unregistVideoListNetworkCallback()V

    return-void
.end method

.method private cancel()V
    .locals 0

    .line 446
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->cancelLoadList()V

    return-void
.end method

.method private getVideo(I)Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;
    .locals 2

    .line 462
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->getVideos()Ljava/util/List;

    move-result-object p0

    .line 463
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;

    .line 464
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;->getResCode()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVideos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/network/bean/VideoListOnlineBean$Video;",
            ">;"
        }
    .end annotation

    .line 458
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->queryVideoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 435
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->registVideoListNetworkCallback()V

    .line 436
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/util/VideoListOnlineDataManager;->clear()V

    .line 437
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->loadList()V

    return-void
.end method

.method private loadList()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;->access$1700(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;->access$2300(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$StatusUIController;)V

    .line 442
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->loadList(Landroid/content/Context;)V

    return-void
.end method

.method private registVideoListNetworkCallback()V
    .locals 1

    .line 450
    const-class v0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$VideoListLoader;->videoListNetworkCallback:Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$Callback;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$Callback;)V

    return-void
.end method

.method private unregistVideoListNetworkCallback()V
    .locals 0

    .line 454
    const-class p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->unregistCallback(Ljava/lang/Class;)V

    return-void
.end method
