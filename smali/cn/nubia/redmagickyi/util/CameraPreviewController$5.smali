.class Lcn/nubia/redmagickyi/util/CameraPreviewController$5;
.super Ljava/lang/Object;
.source "CameraPreviewController.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/CameraPreviewController;->takePreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/CameraPreviewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/CameraPreviewController$5;->this$0:Lcn/nubia/redmagickyi/util/CameraPreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 263
    const-string p0, "CameraPreviewController"

    const-string v0, "Camera perview execute"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
