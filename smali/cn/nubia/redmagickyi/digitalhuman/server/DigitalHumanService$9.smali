.class Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$9;
.super Ljava/lang/Object;
.source "DigitalHumanService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/digitalhuman/ServerIdelWatchDog$Callback;


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

    .line 725
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$9;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 2

    .line 728
    const-string v0, "DigitalHumanService"

    const-string v1, "Server is idel for a long time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$9;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$900(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V

    return-void
.end method
