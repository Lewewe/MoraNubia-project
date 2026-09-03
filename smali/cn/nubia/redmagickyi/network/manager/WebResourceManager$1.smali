.class Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;
.super Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;
.source "WebResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/manager/WebResourceManager;


# direct methods
.method varargs constructor <init>(Lcn/nubia/redmagickyi/network/manager/WebResourceManager;[Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/WebResourceManager;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    return-void
.end method


# virtual methods
.method public onHasBundleVersionUpgrade(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;)V
    .locals 1

    .line 52
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xbc2

    .line 53
    iput v0, p0, Landroid/os/Message;->what:I

    .line 54
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    invoke-static {p0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onNoBundleVersionUpgrade()V
    .locals 2

    .line 60
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1$1;-><init>(Lcn/nubia/redmagickyi/network/manager/WebResourceManager$1;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->isNubiaAcctLogin(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    return-void
.end method
