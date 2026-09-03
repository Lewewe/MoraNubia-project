.class Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$7;
.super Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;
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

    .line 700
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$7;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;-><init>()V

    return-void
.end method


# virtual methods
.method public getScene()I
    .locals 0

    .line 704
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$7;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$700(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->getScene()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x5

    return p0
.end method
