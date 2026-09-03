.class Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController$1;
.super Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;
.source "HasMoreResourceBundleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->queryNewestBundle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;


# direct methods
.method varargs constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;[Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V
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

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/unity/resource/network/manager/webresource/BundleLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    return-void
.end method


# virtual methods
.method protected onHasBundleVersionUpgrade(Lcn/nubia/redmagickyi/unity/resource/network/model/ResourceResponse$OnlineResourceBotItem;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->access$000(Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected onNoBundleVersionUpgrade()V
    .locals 1

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->access$000(Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
