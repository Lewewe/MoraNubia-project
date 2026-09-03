.class Lcn/nubia/redmagickyi/util/PopDialogManager$1;
.super Ljava/lang/Object;
.source "PopDialogManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/PopDialogManager;->performOnAppUpdate(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;

.field final synthetic val$listener:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/PopDialogManager;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$1;->this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$1;->val$listener:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(ZLcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$1;->this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/PopDialogManager;->access$002(Lcn/nubia/redmagickyi/util/PopDialogManager;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;)Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$1;->this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->access$100(Lcn/nubia/redmagickyi/util/PopDialogManager;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$1;->this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->access$100(Lcn/nubia/redmagickyi/util/PopDialogManager;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$1;->this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->access$100(Lcn/nubia/redmagickyi/util/PopDialogManager;)Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateDialog;->show()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$1;->this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->access$200(Lcn/nubia/redmagickyi/util/PopDialogManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$1;->this$0:Lcn/nubia/redmagickyi/util/PopDialogManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/PopDialogManager;->access$300(Lcn/nubia/redmagickyi/util/PopDialogManager;)V

    .line 63
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/PopDialogManager$1;->val$listener:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;

    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;->onDismiss(ZLcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V

    return-void
.end method
