.class Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;
.super Landroid/os/Handler;
.source "ResourceUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;Landroid/os/Looper;)V
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

    .line 253
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 278
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->access$100(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;->onUnzipFailed()V

    goto/16 :goto_2

    .line 269
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 270
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    .line 272
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->getBundleData()Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;->getVersion_name()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;

    invoke-direct {v3, v0, p1, v1}, Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->setBundleUpgradeInfo(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/resource/network/bean/ResourceUpgradeInfoBeans;)V

    .line 274
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->access$100(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;->onUnzipSuccess(Ljava/lang/String;)V

    .line 275
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->release()V

    goto :goto_2

    .line 266
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->access$100(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;->onDownloadFailed()V

    goto :goto_2

    .line 262
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .line 263
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->access$100(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;->onDownloadSuccess(Ljava/io/File;)V

    goto :goto_2

    .line 258
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 259
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$3;->this$0:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->access$100(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;->onDownloading(I)V

    :goto_2
    return-void
.end method
