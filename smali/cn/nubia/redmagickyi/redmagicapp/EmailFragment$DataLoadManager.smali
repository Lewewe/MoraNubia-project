.class Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;
.super Ljava/lang/Object;
.source "EmailFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;
.implements Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoadManager"
.end annotation


# instance fields
.field private emailBatchSyncController:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

.field private emailFetchController:Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;

.field private emailLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

.field private emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

.field private lastLoadEmailBean:Lcn/nubia/redmagickyi/network/bean/EmailBean;

.field private loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 602
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$1;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->loadList(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->deleteRead(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->allRead(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/EmailBean;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->loadContent(Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/EmailBean;)V

    return-void
.end method

.method static synthetic access$2600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)Lcn/nubia/redmagickyi/database/EmailManager;
    .locals 0

    .line 602
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V
    .locals 0

    .line 602
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->cancelOpRequest()V

    return-void
.end method

.method static synthetic access$3502(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Lcn/nubia/redmagickyi/network/manager/LoginManager;)Lcn/nubia/redmagickyi/network/manager/LoginManager;
    .locals 0

    .line 602
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    return-object p1
.end method

.method static synthetic access$3700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)Lcn/nubia/redmagickyi/network/bean/EmailBean;
    .locals 0

    .line 602
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->lastLoadEmailBean:Lcn/nubia/redmagickyi/network/bean/EmailBean;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V
    .locals 0

    .line 602
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->cancelContentRequest()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V
    .locals 0

    .line 602
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->exit()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/EmailBean;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->deleteCurrent(Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/EmailBean;)V

    return-void
.end method

.method private allRead(Landroid/view/View;)V
    .locals 5

    .line 744
    const-string v0, "allRead"

    const-string v1, "EmailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->cancelOpRequest()V

    .line 746
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    move-result-object v0

    invoke-direct {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 748
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 749
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->isRead()Z

    move-result v4

    if-nez v4, :cond_0

    .line 750
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 753
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 754
    const-string p0, "no need to set allRead"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 757
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object v1

    new-array v2, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 p1, 0x4

    invoke-static {v1, p1, v2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;I[Landroid/view/View;)V

    .line 758
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$5;

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$5;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Ljava/util/List;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    .line 770
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-static {p1, v3, v1, v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->emailSyncStatus(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;ILjava/lang/String;Ljava/util/List;)Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailBatchSyncController:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    goto :goto_1

    .line 772
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    :goto_1
    return-void
.end method

.method private cancelContentRequest()V
    .locals 2

    .line 859
    const-string v0, "EmailFragment"

    const-string v1, "cancelContentRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailFetchController:Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->cancel()V

    const/4 v0, 0x0

    .line 862
    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailFetchController:Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;

    :cond_0
    return-void
.end method

.method private cancelOpRequest()V
    .locals 2

    .line 848
    const-string v0, "EmailFragment"

    const-string v1, "cancelOpRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailBatchSyncController:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->cancel()V

    const/4 v0, 0x0

    .line 851
    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailBatchSyncController:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    :cond_0
    return-void
.end method

.method private deleteCurrent(Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/EmailBean;)V
    .locals 3

    .line 680
    const-string v0, "deleteCurrent"

    const-string v1, "EmailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 684
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->cancelOpRequest()V

    .line 685
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 688
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ge p2, v2, :cond_1

    .line 690
    const-string p0, "no need to delete current"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 693
    :cond_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p2

    new-array v1, v2, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x4

    invoke-static {p2, p1, v1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;I[Landroid/view/View;)V

    .line 694
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$3;

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$3;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Ljava/util/List;)V

    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    .line 705
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    .line 694
    invoke-static {p1, v1, p2, v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->emailSyncStatus(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;ILjava/lang/String;Ljava/util/List;)Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailBatchSyncController:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    goto :goto_0

    .line 708
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private deleteRead(Landroid/view/View;)V
    .locals 5

    .line 713
    const-string v0, "deleteRead"

    const-string v1, "EmailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->cancelOpRequest()V

    .line 715
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    move-result-object v0

    invoke-direct {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 717
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 718
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->isRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 719
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 722
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 723
    const-string p0, "no need to delete read"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 726
    :cond_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object v1

    new-array v2, v3, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x4

    invoke-static {v1, p1, v2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;I[Landroid/view/View;)V

    .line 727
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$4;

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$4;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Ljava/util/List;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    .line 738
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 727
    invoke-static {p1, v2, v1, v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->emailSyncStatus(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;ILjava/lang/String;Ljava/util/List;)Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailBatchSyncController:Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    goto :goto_1

    .line 740
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    :goto_1
    return-void
.end method

.method private exit()V
    .locals 2

    .line 832
    const-string v0, "EmailFragment"

    const-string v1, "exit email"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 835
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/EmailManager;->queryAllEmail()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/EmailManager;->updateEmail(Ljava/util/List;)V

    .line 836
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1402(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;Ljava/util/List;)Ljava/util/List;

    .line 839
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    if-eqz p0, :cond_1

    .line 840
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->cancel()V

    :cond_1
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 0

    .line 825
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private loadContent(Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/EmailBean;)V
    .locals 5

    .line 639
    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->lastLoadEmailBean:Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 640
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->cancelOpRequest()V

    .line 641
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->cancelContentRequest()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 643
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadContent: content is null? "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getContent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EmailFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "loadContent: content null "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailFetchController:Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->cancel()V

    .line 650
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object v0

    invoke-static {v0, v3, p2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;ILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    .line 651
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object v0

    new-array v1, v1, [Landroid/view/View;

    aput-object p1, v1, v3

    const/4 p1, 0x4

    invoke-static {v0, p1, v1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;I[Landroid/view/View;)V

    .line 652
    new-instance p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    .line 666
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result p2

    .line 652
    invoke-static {p1, v0, p2}, Lcn/nubia/redmagickyi/network/NetworkUtils;->fetchEmail(Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;Ljava/lang/String;I)Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailFetchController:Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;

    goto :goto_1

    .line 668
    :cond_2
    const-string p1, "onEmailItemClick: content not null"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;ILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    goto :goto_1

    .line 672
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;ILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    goto :goto_1

    .line 675
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;ILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    :goto_1
    return-void
.end method

.method private loadList(Landroid/view/View;)V
    .locals 2

    .line 611
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    const-string p1, "EmailFragment"

    const-string v0, "load data failed, reason: no network"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 613
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_0

    .line 615
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 819
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    .line 820
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    .line 821
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/network/model/EmailResponse;)V
    .locals 1

    .line 800
    const-string p1, "EmailFragment"

    const-string v0, "load data complete"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/EmailManager;->queryAllEmail()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1402(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;Ljava/util/List;)Ljava/util/List;

    .line 802
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$6;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$6;-><init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V
    .locals 1

    .line 782
    const-string p1, "EmailFragment"

    const-string v0, "load token complete"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    if-nez p1, :cond_0

    .line 784
    new-instance p1, Lcn/nubia/redmagickyi/database/EmailManager;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/database/EmailManager;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    .line 786
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    if-eqz p1, :cond_1

    .line 787
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->cancel()V

    const/4 p1, 0x0

    .line 788
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    .line 790
    :cond_1
    new-instance p1, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    const/4 v0, 0x0

    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailLoadManager:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    const/4 v0, 0x1

    .line 791
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->setMaxRetryCount(I)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->setEmailManager(Lcn/nubia/redmagickyi/database/EmailManager;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->setCallback(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->load()V

    return-void
.end method
