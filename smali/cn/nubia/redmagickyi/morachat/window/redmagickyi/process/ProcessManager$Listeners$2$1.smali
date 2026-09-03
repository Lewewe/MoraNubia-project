.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2$1;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->onTranslateClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/CommonUtils;->isStatusBarShowing(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "status_bar_hided"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.zte.intellitext.IntelliTextProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "setIntelliText"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    const-string v1, "start_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 352
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTranslateClicked, result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window-ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2$1;->this$2:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager$Listeners;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/ProcessManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->show()V

    return-void
.end method
