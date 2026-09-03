.class Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;
.super Ljava/lang/Object;
.source "AchievementNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadListTask"
.end annotation


# instance fields
.field private loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

.field private taskCallback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask$1;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$1;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;)Z
    .locals 0

    .line 88
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->isLoadDialogShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->dismissLoadDialog()V

    return-void
.end method

.method private dismissLoadDialog()V
    .locals 1

    .line 125
    const-string v0, "dismissLoadDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    return-void
.end method

.method private isLoadDialogShowing()Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

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

    .line 112
    const-string v0, "showLoadDialog"

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->isLoadDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->loadDialog:Lcn/nubia/redmagickyi/view/BaseDialog;

    .line 117
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method


# virtual methods
.method public cancelLoadList(Z)V
    .locals 1

    .line 104
    const-string v0, "cancelLoadList"

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->dismissLoadDialog()V

    .line 108
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->getInstance()Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->cancel()V

    return-void
.end method

.method public loadList(Landroid/content/Context;Z)V
    .locals 1

    .line 91
    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "loadList"

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->showLoadDialog(Landroid/content/Context;)V

    .line 96
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->getInstance()Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->taskCallback:Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->setCallback(Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;)Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager;->load()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 98
    const-string p0, "loadList, no network"

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 99
    sget p0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$300(I)V

    :cond_2
    :goto_0
    return-void
.end method
