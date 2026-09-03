.class Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;
.super Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;
.source "DigitalHumanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;Landroid/content/Context;)V
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

    .line 511
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModelReady()V
    .locals 5

    .line 514
    const-string v0, "onModelReady"

    const-string v1, "DigitalHumanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 536
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;

    .line 539
    :try_start_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v3}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 540
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->getCallback()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    move-result-object v3

    invoke-interface {v3}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;->onHumanInited()V

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->getPid()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v4}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 543
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->getCallback()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    move-result-object v3

    invoke-interface {v3}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;->onHumanInited()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 549
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 546
    :catch_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removed expired callbacks of pid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->getPid()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUnitySkinChanged()V
    .locals 1

    .line 564
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$200(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$200(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->refreshUI()V

    :cond_0
    return-void
.end method

.method public updateModelBackground()V
    .locals 1

    .line 557
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$800(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$800(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$4;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$800(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->getBackgroundColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelBackgroundManager;->setBackgroundColor(I)Z

    :cond_0
    return-void
.end method
