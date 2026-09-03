.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 530
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 533
    invoke-static {}, Lcn/nubia/redmagickyi/util/FileUtils;->getPhoneStorage()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->model_shortcut_capture_internal_storage:I

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;

    iget-object v3, v3, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    sget v4, Lcn/nubia/redmagickyi/main/R$string;->model_shortcut_capture:I

    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->onTakeShot(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Takeshot.onScanCompleted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$4$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RedmagicKyiActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
