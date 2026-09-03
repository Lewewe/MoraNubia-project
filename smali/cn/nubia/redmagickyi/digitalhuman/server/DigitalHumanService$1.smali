.class Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;
.super Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;
.source "DigitalHumanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarHeight()I
    .locals 2

    .line 401
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 402
    const-string p0, "getAvatarHeight failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 405
    :cond_0
    const-string v0, "getAvatarHeight requested."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->getScene()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarHeight(I)I

    move-result p0

    return p0
.end method

.method public getAvatarLayoutParams(FF)[F
    .locals 2

    .line 411
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 412
    const-string p0, "getAvatarLayoutParams failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 415
    :cond_0
    const-string v0, "getAvatarLayoutParams requested."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->getScene()I

    move-result p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarLayoutParams(IFF)[F

    move-result-object p0

    return-object p0
.end method

.method public getAvatarWidth()I
    .locals 2

    .line 391
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 392
    const-string p0, "getAvatarWidth failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 395
    :cond_0
    const-string v0, "getAvatarWidth requested."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->getScene()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarWidth(I)I

    move-result p0

    return p0
.end method

.method public getHumanScaleV2()Ljava/lang/String;
    .locals 3

    .line 380
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 381
    const-string p0, "getHumanScale failed. because UnityPreview has not inited."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 384
    :cond_0
    const-string v0, "setHumanScale requested."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->getModelFocusLen()Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 386
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->toJson()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getScene()I
    .locals 3

    .line 171
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 172
    const-string p0, "switchScene failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x5

    return p0

    .line 175
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->getScene()I

    move-result p0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getScene requested. result: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isHumanInited()Z
    .locals 3

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 130
    const-string p0, "isHumanInited failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isModleinitfinish()Z

    move-result p0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isHumanInited requested. result: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isHumanRendered()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 151
    const-string p0, "isHumanRendered failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isHumanRendered()Z

    move-result p0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isHumanRendered requested. result: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public onSurfaceChanged(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;II)V
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", caller = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "DigitalHumanService"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object p3, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Unity:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    if-ne p3, p2, :cond_2

    .line 204
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 205
    const-string p0, "onSurfaceChanged failed. because UnityPreview has not inited."

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$300(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 209
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$300(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->stopIdelCountdown()V

    .line 211
    :cond_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->setActive(I)V

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->onSurfaceChanged(Landroid/view/Surface;)V

    goto :goto_0

    .line 213
    :cond_2
    sget-object p3, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Thumbnail:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    if-ne p3, p2, :cond_4

    .line 214
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$200(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    .line 215
    const-string p0, "onSurfaceCreated failed. because ThumbnailPreview has not inited."

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_3
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$500(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->setActive(I)V

    .line 219
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$200(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->onSurfaceChanged(Landroid/view/Surface;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceCreated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Unity:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    if-ne v0, p2, :cond_1

    .line 185
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 186
    const-string p0, "onSurfaceCreated failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 189
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->onSurfaceCreated(Landroid/view/Surface;)V

    goto :goto_0

    .line 190
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Thumbnail:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    if-ne v0, p2, :cond_3

    .line 191
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$200(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    .line 192
    const-string p0, "onSurfaceCreated failed. because ThumbnailPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 195
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$200(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->onSurfaceCreated(Landroid/view/Surface;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/Surface;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceDestroyed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preCaller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Unity:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    if-ne v0, p2, :cond_2

    .line 228
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 229
    const-string p0, "onSurfaceDestroyed failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 233
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->setInactive(I)V

    .line 234
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$300(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 235
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$300(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog;->startIdelCountdown()V

    .line 237
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->onSurfaceDestroyed(Landroid/view/Surface;)V

    goto :goto_0

    .line 239
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Thumbnail:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    if-ne v0, p2, :cond_4

    .line 240
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$200(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    .line 241
    const-string p0, "onSurfaceCreated failed. because ThumbnailPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 244
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$500(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 245
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$200(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->onSurfaceDestroyed(Landroid/view/Surface;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 254
    const-string p0, "DigitalHumanService"

    const-string p1, "onTouchEvent failed. because UnityPreview has not inited."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 257
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public pauseMotion()V
    .locals 1

    .line 301
    const-string p0, "DigitalHumanService"

    const-string v0, "Method [pauseMotion] is deprecated"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V
    .locals 4

    .line 73
    const-string v0, "DigitalHumanService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerCallback begin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 79
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;

    .line 81
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->getPid()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 86
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;

    invoke-direct {v3, v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;-><init>(ILcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->isHumanInited()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    :try_start_1
    invoke-interface {p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;->onHumanInited()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 93
    :catch_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 94
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;

    .line 96
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->getPid()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 101
    :cond_3
    const-string p1, "DigitalHumanService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removed expired callbacks of pid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 87
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 107
    :cond_4
    :goto_0
    const-string p1, "DigitalHumanService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerCallback end, size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resumeMotion()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 283
    const-string p0, "resumeMotion failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isModleinitfinish()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "resumeMotion requested. caller = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", preCaller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 290
    const-string p0, "resumeMotion failed. because current caller is invalid."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 293
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->resumeMotion()V

    goto :goto_0

    .line 295
    :cond_2
    const-string p0, "resumeMotion requested failed, because human hasn\'t inited yet."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setHumanRendered()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 141
    const-string p0, "setHumanRendered failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_0
    const-string v0, "setHumanRendered requested."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->setHumanRendered()V

    return-void
.end method

.method public setHumanRotation(F)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 356
    const-string p0, "setHumanRotation failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setHumanRotation requested. rotation: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", caller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", preCaller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->setModelRotation(F)V

    return-void
.end method

.method public setHumanScale(FF)V
    .locals 6

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 365
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->setHumanScaleV2(FFFFF)V

    return-void
.end method

.method public setHumanScaleV2(FFFFF)V
    .locals 6

    .line 370
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 371
    const-string p0, "setHumanScale failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setHumanScale requested. scaleValue: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", speed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", posx: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", posy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", moveSpeed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", caller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", preCaller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->setModelFocusLen(FFFFF)V

    return-void
.end method

.method public setSDKVersionCode(I)V
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSDKVersionCode requested. sdkVersionCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$600(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public startMotion(ILcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)Z
    .locals 4

    .line 262
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 263
    const-string p0, "startMotion failed. because UnityPreview has not inited."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "startMotion requested. motionCode: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", motionVia: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", caller = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", preCaller = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v3}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Emotion:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    if-ne v0, p2, :cond_1

    .line 268
    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper;->getMotionId(I)I

    move-result p1

    .line 269
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->startMotion(ILcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)Z

    move-result p0

    return p0

    .line 270
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Care:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    if-ne v0, p2, :cond_2

    .line 271
    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityCareMapper$Public;->getMotionId(I)I

    move-result p1

    .line 272
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionStateMachine$Care;->prepare()V

    .line 273
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->startMotion(ILcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)Z

    move-result p0

    return p0

    .line 274
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Specify:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    if-ne v0, p2, :cond_3

    .line 275
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->startMotion(ILcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public startSpeak(Ljava/lang/String;)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 336
    const-string p0, "startSpeak failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startSpeak requested. words: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", caller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", preCaller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Client:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->startSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;Z)V

    return-void
.end method

.method public stopMotion()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 322
    const-string p0, "stopMotion failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "stopMotion requested. caller = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", preCaller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 327
    const-string p0, "stopMotion failed. because current caller is invalid."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 330
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->stopMotion()V

    return-void
.end method

.method public stopSpeak()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 346
    const-string p0, "stopSpeak failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "stopSpeak requested. caller = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", preCaller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$400(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;->getCurrentActiveCaller()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Client:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->stopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    return-void
.end method

.method public switchScene(I)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    if-nez v0, :cond_0

    .line 162
    const-string p0, "switchScene failed. because UnityPreview has not inited."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "switchScene requested. scene: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->changeUnityScene(I)V

    return-void
.end method

.method public unregisterCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregisterCallback begin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;

    .line 118
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 124
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unregisterCallback end, size is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$000(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
