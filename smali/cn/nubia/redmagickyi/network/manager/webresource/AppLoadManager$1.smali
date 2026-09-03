.class Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager$1;
.super Lcn/nubia/redmagickyi/network/controller/BaseAppLoadController;
.source "AppLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->doLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/controller/BaseAppLoadController;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->access$002(Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;I)I

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 0

    if-nez p2, :cond_0

    .line 68
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->access$002(Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;I)I

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->access$100(Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;

    const/4 p2, 0x3

    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;->access$002(Lcn/nubia/redmagickyi/network/manager/webresource/AppLoadManager;I)I

    .line 73
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/util/Utils;->setAppVersionUpgrading(Landroid/content/Context;Z)V

    .line 74
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/16 p2, 0xbc3

    .line 75
    iput p2, p0, Landroid/os/Message;->what:I

    .line 76
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    invoke-static {p0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
