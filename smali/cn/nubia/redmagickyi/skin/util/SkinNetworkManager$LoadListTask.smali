.class Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;
.super Ljava/lang/Object;
.source "SkinNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadListTask"
.end annotation


# instance fields
.field private loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

.field private taskCallback:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask$1;-><init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$1;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;)Z
    .locals 0

    .line 93
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->isLoadDialogShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->dismissLoadDialog()V

    return-void
.end method

.method private dismissLoadDialog()V
    .locals 1

    .line 140
    const-string v0, "dismissLoadDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    return-void
.end method

.method private isLoadDialogShowing()Z
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

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

.method private showLoadDialog(Landroid/content/Context;)V
    .locals 2

    .line 127
    const-string v0, "showLoadDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->isLoadDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    .line 132
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method


# virtual methods
.method public cancelLoadList(Z)V
    .locals 1

    .line 117
    const-string v0, "cancelLoadList"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->dismissLoadDialog()V

    .line 122
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->getInstance()Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->cancel()V

    :cond_1
    return-void
.end method

.method public loadList(Landroid/content/Context;Z)V
    .locals 2

    .line 96
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$200()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoad success, callback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->initOfflineSkinMap()Ljava/util/Map;

    const/4 v0, 0x0

    .line 100
    invoke-interface {p1, v0, p2}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;->onLoadSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;Z)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string v0, "loadList"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->showLoadDialog(Landroid/content/Context;)V

    .line 108
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->getInstance()Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->setCallback(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$Callback;)Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->load()V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 110
    const-string p0, "loadList, no network"

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 111
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->toast(I)V

    :cond_3
    :goto_1
    return-void
.end method
