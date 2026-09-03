.class public Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "EmailLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;

.field private emailLoadController:Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;

.field private emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

.field private maxRetryCount:Ljava/lang/Integer;


# direct methods
.method public varargs constructor <init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 21
    const-string p1, "EmailLoadManager"

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Lcn/nubia/redmagickyi/database/EmailManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->callback:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->isCanceled:Z

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 113
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->emailLoadController:Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;->cancel()V

    .line 116
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/EmailManager;->deleteAllEmail()V

    goto :goto_0

    .line 119
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/database/EmailManager;->deleteAllEmail()V

    :goto_0
    return-void
.end method

.method public load()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 52
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$1;-><init>(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->emailLoadController:Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;

    .line 104
    iget-object v1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->maxRetryCount:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;->setMaxRetryCount(I)Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;

    .line 107
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->emailLoadController:Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;->load()Lcn/nubia/redmagickyi/network/controller/BaseEmailLoadController;

    return-void
.end method

.method public setCallback(Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->callback:Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager$Callback;

    return-object p0
.end method

.method public setEmailManager(Lcn/nubia/redmagickyi/database/EmailManager;)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->emailManager:Lcn/nubia/redmagickyi/database/EmailManager;

    return-object p0
.end method

.method public setMaxRetryCount(I)Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;
    .locals 0

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/EmailLoadManager;->maxRetryCount:Ljava/lang/Integer;

    return-object p0
.end method
