.class Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback$1;
.super Ljava/lang/Object;
.source "ProxyDigitalHumanService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->onHumanInited()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 502
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback$1;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 505
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback$1;->this$1:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService$ProxyDigitalHumanClientCallback;->this$0:Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;->access$500(Lcn/nubia/redmagickyi/digitalhuman/proxy/ProxyDigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;->onModelReady()V

    return-void
.end method
