.class Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;
.super Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;
.source "ProxyDigitalHumanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyDigitalHumanClientCallback"
.end annotation


# instance fields
.field private innerCallback:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$1;)V
    .locals 0

    .line 488
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)V

    return-void
.end method


# virtual methods
.method public onHumanInited()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->access$500(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;

    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;)V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->access$1300(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;Ljava/lang/Runnable;)V

    .line 509
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->innerCallback:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    if-eqz p0, :cond_1

    .line 510
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;->onHumanInited()V

    :cond_1
    return-void
.end method

.method public onMotionStart(Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->innerCallback:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    if-eqz p0, :cond_0

    .line 531
    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;->onMotionStart(Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMotionStop(Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->innerCallback:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    if-eqz p0, :cond_0

    .line 538
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;->onMotionStop(Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V

    :cond_0
    return-void
.end method

.method public onSpeakStart(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->innerCallback:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    if-eqz p0, :cond_0

    .line 517
    invoke-interface {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;->onSpeakStart(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSpeakStop(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->innerCallback:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    if-eqz p0, :cond_0

    .line 524
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;->onSpeakStop(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    :cond_0
    return-void
.end method

.method public setInnerCallback(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V
    .locals 0

    if-ne p0, p1, :cond_0

    return-void

    .line 496
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->innerCallback:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    return-void
.end method
