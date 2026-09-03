.class Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask;
.super Ljava/lang/Object;
.source "VideoListNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadListTask"
.end annotation


# instance fields
.field private taskCallback:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask$1;-><init>(Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$1;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLoadList()V
    .locals 0

    .line 64
    const-string p0, "cancelLoadList"

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->getInstance()Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->cancel()V

    return-void
.end method

.method public loadList(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    const-string p1, "loadList"

    invoke-static {p1}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->getInstance()Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->setCallback(Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;)Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager;->load()V

    goto :goto_0

    .line 58
    :cond_0
    const-string p1, "loadList, no network"

    invoke-static {p1}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;

    new-instance p1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :goto_0
    return-void
.end method
