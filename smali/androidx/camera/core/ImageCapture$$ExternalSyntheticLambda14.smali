.class public final synthetic Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda14;->f$0:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda14;->f$0:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    invoke-static {p0}, Landroidx/camera/core/ImageCapture;->lambda$takePicture$5(Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method
