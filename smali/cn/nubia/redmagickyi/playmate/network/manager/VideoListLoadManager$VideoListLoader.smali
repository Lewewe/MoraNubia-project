.class Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;
.super Ljava/lang/Object;
.source "VideoListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoListLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;

.field private videoListLoadController:Lcn/nubia/redmagickyi/playmate/network/controller/BaseVideoListLoadController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;-><init>(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->loadAll()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->loadPage(I)V

    return-void
.end method

.method private loadAll()V
    .locals 2

    .line 72
    const-string v0, "VideoListLoadManager"

    const-string v1, "loadAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->loadPage(I)V

    return-void
.end method

.method private loadPage(I)V
    .locals 1

    .line 77
    new-instance v0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader$1;-><init>(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->videoListLoadController:Lcn/nubia/redmagickyi/playmate/network/controller/BaseVideoListLoadController;

    .line 121
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/playmate/network/controller/BaseVideoListLoadController;->setPageNo(I)Lcn/nubia/redmagickyi/playmate/network/controller/BaseVideoListLoadController;

    .line 122
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->videoListLoadController:Lcn/nubia/redmagickyi/playmate/network/controller/BaseVideoListLoadController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/network/controller/BaseVideoListLoadController;->load()Lcn/nubia/redmagickyi/playmate/network/controller/BaseVideoListLoadController;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->access$1300(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;)Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->access$1302(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;)Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->videoListLoadController:Lcn/nubia/redmagickyi/playmate/network/controller/BaseVideoListLoadController;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/network/controller/BaseVideoListLoadController;->cancel()V

    .line 132
    iput-object v1, p0, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$VideoListLoader;->videoListLoadController:Lcn/nubia/redmagickyi/playmate/network/controller/BaseVideoListLoadController;

    :cond_1
    return-void
.end method
