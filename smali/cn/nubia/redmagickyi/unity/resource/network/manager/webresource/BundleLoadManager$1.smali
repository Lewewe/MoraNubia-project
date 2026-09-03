.class Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;
.super Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController;
.source "BundleLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->doLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/resource/network/controller/BaseBundleLoadController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->access$002(Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;I)I

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;)V
    .locals 5

    const-string v0, "comparing bundle version, old is "

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;->getCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 62
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$Data;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$Data;->getRed_magic_bot_item()Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->getVersion_name()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->getLocalBundleVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 67
    :try_start_0
    const-string v3, "BundleLoadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", now is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->access$002(Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;I)I

    .line 70
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgrading(Landroid/content/Context;Z)V

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->getUpdate_description()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgradeDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->onHasBundleVersionUpgrade(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->access$002(Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;I)I

    .line 81
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;->access$100(Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 56
    check-cast p1, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager$1;->onSuccess(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse;)V

    return-void
.end method
