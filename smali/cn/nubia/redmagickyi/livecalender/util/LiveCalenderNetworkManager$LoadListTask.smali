.class Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;
.super Ljava/lang/Object;
.source "LiveCalenderNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadListTask"
.end annotation


# instance fields
.field private loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

.field private taskCallback:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;-><init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$1;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;)Z
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->isLoadDialogShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->dismissLoadDialog()V

    return-void
.end method

.method private dismissLoadDialog()V
    .locals 1

    .line 116
    const-string v0, "dismissLoadDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$100(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    return-void
.end method

.method private isLoadDialogShowing()Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

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
    .locals 1

    .line 103
    const-string v0, "showLoadDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$100(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->isLoadDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LiveCalenderDialog;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LiveCalenderDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    .line 108
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method


# virtual methods
.method public cancelLoadList(Z)V
    .locals 1

    .line 95
    const-string v0, "cancelLoadList"

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$100(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->dismissLoadDialog()V

    .line 99
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->cancel()V

    return-void
.end method

.method public loadList(Landroid/content/Context;Z)V
    .locals 1

    .line 82
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "loadList"

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$100(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->showLoadDialog(Landroid/content/Context;)V

    .line 87
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->setCallback(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;)Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->load()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 89
    const-string p0, "loadList, no network"

    invoke-static {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$100(Ljava/lang/String;)V

    .line 90
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$200(I)V

    :cond_2
    :goto_0
    return-void
.end method
