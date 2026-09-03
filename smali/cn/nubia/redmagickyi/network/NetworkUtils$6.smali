.class Lcn/nubia/redmagickyi/network/NetworkUtils$6;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/NetworkUtils;->onAccountExpired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetUserId(Ljava/lang/String;)V
    .locals 2

    .line 442
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    if-eqz p0, :cond_0

    .line 443
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    const/16 v0, 0xbca

    .line 444
    iput v0, p0, Landroid/os/Message;->what:I

    .line 445
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->model_name_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 446
    sget-object p1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
