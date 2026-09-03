.class Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;
.super Ljava/lang/Object;
.source "VideoListLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoListLoader"
.end annotation


# instance fields
.field private pageNo:Ljava/lang/Integer;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

.field private videoListLoadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$1;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->loadAll()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;)Ljava/lang/Integer;
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->pageNo:Ljava/lang/Integer;

    return-object p0
.end method

.method private loadAll()V
    .locals 2

    .line 95
    const-string v0, "VideoListLoadManager"

    const-string v1, "loadAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->videoListLoadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;

    .line 135
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->pageNo:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;->setPageNo(I)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;

    .line 138
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->videoListLoadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;->load()Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$1300(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->access$1302(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->videoListLoadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;->cancel()V

    .line 148
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->videoListLoadController:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;

    :cond_1
    return-void
.end method

.method public setPageNo(Ljava/lang/Integer;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$VideoListLoader;->pageNo:Ljava/lang/Integer;

    return-void
.end method
