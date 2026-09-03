.class public final Landroidx/camera/core/Preview$Defaults;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroidx/camera/core/impl/ConfigProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Defaults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/ConfigProvider<",
        "Landroidx/camera/core/impl/PreviewConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroidx/camera/core/impl/PreviewConfig;

.field private static final DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

.field private static final DEFAULT_SURFACE_OCCUPANCY_PRIORITY:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 601
    invoke-static {}, Landroidx/camera/core/CameraX;->getSurfaceManager()Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraDeviceSurfaceManager;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/Preview$Defaults;->DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

    .line 607
    new-instance v1, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v1}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 609
    invoke-virtual {v1, v0}, Landroidx/camera/core/Preview$Builder;->setMaxResolution(Landroid/util/Size;)Landroidx/camera/core/Preview$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 610
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview$Builder;->setSurfaceOccupancyPriority(I)Landroidx/camera/core/Preview$Builder;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/PreviewConfig;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/Preview$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/PreviewConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getConfig()Landroidx/camera/core/impl/Config;
    .locals 0

    .line 598
    invoke-virtual {p0}, Landroidx/camera/core/Preview$Defaults;->getConfig()Landroidx/camera/core/impl/PreviewConfig;

    move-result-object p0

    return-object p0
.end method

.method public getConfig()Landroidx/camera/core/impl/PreviewConfig;
    .locals 0

    .line 617
    sget-object p0, Landroidx/camera/core/Preview$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/PreviewConfig;

    return-object p0
.end method
