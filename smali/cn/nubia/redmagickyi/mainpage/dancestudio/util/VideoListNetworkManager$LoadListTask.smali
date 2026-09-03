.class Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;
.super Ljava/lang/Object;
.source "VideoListNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadListTask"
.end annotation


# instance fields
.field private loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

.field private taskCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$Callback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->isLoadDialogShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->dismissLoadDialog()V

    return-void
.end method

.method private dismissLoadDialog()V
    .locals 1

    .line 122
    const-string v0, "dismissLoadDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    return-void
.end method

.method private isLoadDialogShowing()Z
    .locals 0

    .line 118
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showLoadDialog(Landroid/content/Context;Z)V
    .locals 1

    .line 108
    const-string v0, "showLoadDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->isLoadDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;

    invoke-direct {v0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    return-void
.end method


# virtual methods
.method public cancelLoadList(Z)V
    .locals 1

    .line 100
    const-string v0, "cancelLoadList"

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->dismissLoadDialog()V

    .line 104
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->cancel()V

    return-void
.end method

.method public loadList(Landroid/content/Context;Z)Z
    .locals 5

    .line 80
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListOnlineDataManager;->getNextPageNo()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    const-string p0, "loadList, no need to load more"

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    return v1

    .line 85
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "loadList, page No."

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->showLoadDialog(Landroid/content/Context;Z)V

    .line 90
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$Callback;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->setCallback(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$Callback;)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager;->load(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 92
    const-string p1, "loadList, no network"

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$Callback;

    new-instance p1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/manager/VideoListLoadManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_4
    :goto_0
    return v3
.end method
