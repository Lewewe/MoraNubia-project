.class public final synthetic Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/camera/core/impl/CameraFactory$Provider;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;)Landroidx/camera/core/impl/CameraFactory;
    .locals 0

    .line 0
    new-instance p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraFactory;-><init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;)V

    check-cast p0, Landroidx/camera/core/impl/CameraFactory;

    return-object p0
.end method
