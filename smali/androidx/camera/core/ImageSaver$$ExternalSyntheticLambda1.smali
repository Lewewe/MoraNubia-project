.class public final synthetic Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageSaver;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageSaver;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/ImageSaver;

    iput-object p2, p0, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/ImageSaver;

    iget-object p0, p0, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroidx/camera/core/ImageSaver;->lambda$postSuccess$0$androidx-camera-core-ImageSaver(Landroid/net/Uri;)V

    return-void
.end method
