.class public Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "SkinExchangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

.field private code:Ljava/lang/String;

.field private controller:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;

.field private oldSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

.field private skinDetailManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 19
    const-string v0, "SkinExchangeManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->TAG:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->oldSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 28
    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Ljava/lang/String;Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 19
    const-string v0, "SkinExchangeManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->TAG:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->oldSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 33
    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->code:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->oldSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->callback:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->skinDetailManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;
    .locals 0

    .line 18
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->skinDetailManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->isCanceled:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->isCanceled:Z

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 182
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->skinDetailManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->cancel()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->skinDetailManager:Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    .line 187
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->controller:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;

    if-eqz p0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;->cancel()V

    :cond_1
    return-void
.end method

.method public load()V
    .locals 3

    .line 39
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 40
    new-instance v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;-><init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->controller:Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;

    .line 172
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->code:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 173
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->oldSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;->exchangeFromAchievement(Ljava/lang/String;I)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->oldSkin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getId()I

    move-result v2

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;->exchangeFromActivity(Ljava/lang/String;ILjava/lang/String;)Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;

    :goto_0
    return-void
.end method
