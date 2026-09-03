.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService$WindowCommandLocationBinder;
.super Landroid/os/Binder;
.source "WindowCommandLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowCommandLocationBinder"
.end annotation


# instance fields
.field private mService:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService;)V
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

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService$WindowCommandLocationBinder;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService$WindowCommandLocationBinder;->mService:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService;

    return-void
.end method


# virtual methods
.method public getCurrentWifiName()Ljava/lang/String;
    .locals 0

    .line 59
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandLocationService;->getCurrentWifiName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
